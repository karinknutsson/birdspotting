require 'open-uri'
require 'nokogiri'

class BirdsController < ApplicationController
  before_action :set_bird, only: %i[show edit update destroy]

  def index
    @birds = Bird.all.order(name: :asc)
    policy_scope @birds
  end

  def show
    authorize @bird

    @map_spots = Spot.where(bird: @bird).where.not(latitude: nil, longitude: nil)
    @markers = @map_spots.map do |spot|
      {
        lng: spot.longitude,
        lat: spot.latitude
      }
    end

    @bird_url = "https://en.wikipedia.org/wiki/#{@bird.wiki_name}"
  end

  def new
    @bird = Bird.new
    authorize @bird
  end

  def create
    @bird = Bird.new(bird_params)
    authorize @bird
    @bird.name = capitalize_name(@bird.name)

    if Bird.all.find_by(name: @bird.name)
      redirect_to found_path
    else
      @bird.wiki_name = make_name_wiki(@bird.name)
      doc = get_content(@bird.wiki_name)
      @bird.latin_name = get_latin_name(doc)

      if @bird.latin_name.nil?
        redirect_to not_found_path
      else
        wiki_children = get_children(doc)
        @bird.description = get_info(wiki_children, @bird.latin_name)
        if @bird.save
          redirect_to root_path
        else
          render :new
        end
      end
    end
  end

  def edit
    authorize @bird
  end

  def update
    authorize @bird
    @bird.update(bird_params)
    redirect_to bird_path(@bird)
  end

  def destroy
    authorize @bird
    @bird.destroy
    redirect_to birds_path
  end

  def daily
    @bird = Bird.all.sample
    authorize @bird
    @spots = Spot.where(bird: @bird).order(spot_date: :desc).limit(7)
    authorize @spots
  end

  def found
    @bird = Bird.new
    authorize @bird
  end

  def not_found
    @bird = Bird.new
    authorize @bird
  end

  private

  def set_bird
    @bird = Bird.find(params[:id])
  end

  def bird_params
    params.require(:bird).permit(:name, :latin_name, :image, :wiki_name, :description)
  end

  def capitalize_name(bird_name)
    parts = bird_name.split(' ')
    parts_down = parts.map &:downcase
    parts_down[0].capitalize!
    parts_down.join(' ')
  end

  def make_name_wiki(bird_name)
    wiki_name = bird_name.gsub(/ /, '_')
    wiki_name.gsub(/'/, '%27')
  end

  def get_content(wiki_name)
    html_content = open("https://en.wikipedia.org/wiki/#{wiki_name}").read
    Nokogiri::HTML(html_content)
  end

  def get_latin_name(doc)
    return nil if doc.nil?
    return doc.search('.infobox').at_css('span.binomial').text.strip if doc.search('.infobox').at_css('span.binomial')

    nil
  end

  def get_children(doc)
    wiki_content = doc.search('.mw-parser-output')
    wiki_content.children
  end

  def get_info(wiki_children, latin_name)
    first_n = []
    i = 3
    while i < 20
      break if wiki_children[i].attributes["id"] && wiki_children[i].attributes["id"].content == "toc"

      first_n << wiki_children[i]
      i += 1
    end

    first_n.reverse!
    paragraphs = []
    j = 0
    while j < first_n.length
      break if first_n[j].attributes["class"] && first_n[j].attributes["class"].content == "infobox biota"

      paragraphs << first_n[j]
      j += 1
    end

    paragraphs.reverse!
    info = ""
    paragraphs.each { |p| info += p.text.strip }

    info.gsub!(/\[\d\]/, '')
    info.gsub(" (#{latin_name})", '')
  end
end
