require 'open-uri'
require 'nokogiri'

require 'pry-byebug'

class BirdsController < ApplicationController
  def index
    @birds = Bird.all
  end

  def show
    @bird = Bird.find(params[:id])
    authorize @bird
  end

  def new
    @bird = Bird.new
    authorize @bird
  end

  def create

    @bird = Bird.new(bird_params)
    binding.pry
    authorize @bird
    if @bird.save
      redirect_to root_path
    else
      render :new
    end
  end

  def edit
    @bird = Bird.find(params[:id])
    authorize @bird
  end

  def update
    authorize @bird
    @bird = Bird.find(params[:id])
    @bird.update(bird_params)
    redirect_to bird_path(@bird)
  end

  def destroy
    authorize @bird
    @bird = Bird.find(params[:id])
    @bird.destroy
    redirect_to birds_path
  end

  def daily
    @bird = Bird.all.sample
    authorize @bird
    @spots = Spot.where(bird: @bird).order(spot_date: :desc).limit(5)
    authorize @spots
  end

  private

  def bird_params
    params.require(:bird).permit(:name, :latin_name, :image, :description)
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
    doc.search('.infobox').at_css('span.binomial').text.strip
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

  def scrape_bird(bird)
    wiki_name = make_name_wiki(bird)
    doc = get_content(wiki_name)
    latin_name = get_latin_name(doc)
    return nil if latin_name.nil?

    wiki_children = get_children(doc)
    info = get_info(wiki_children, latin_name)
    [latin_name, info]
  end
end
