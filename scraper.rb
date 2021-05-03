require 'open-uri'
require 'nokogiri'

require 'pry-byebug'

def make_name_wiki(bird_name)
  parts = bird_name.split(' ')
  parts_down = parts.map &:downcase
  parts_down[0].capitalize!
  parts_down.join('_').gsub(/'/, '%27')
end

def scrape_wiki(wiki_name)
  html_content = open("https://en.wikipedia.org/wiki/#{wiki_name}").read
  doc = Nokogiri::HTML(html_content)
  latin_name = doc.search('.infobox').at_css('span.binomial').text.strip

  wiki_content = doc.search('.mw-parser-output')
  wiki_children = wiki_content.children
  first_n = []

  i = 3
  while i < 20 do
    if wiki_children[i].attributes["id"] && wiki_children[i].attributes["id"].content == "toc"
      break
    end
    first_n << wiki_children[i]
    i += 1
  end

  first_n.reverse!
  paragraphs = []

  j = 0
  while j < first_n.length do
    if first_n[j].attributes["class"] && first_n[j].attributes["class"].content == "infobox biota"
      break
    end
    paragraphs << first_n[j]
    j += 1
  end

  paragraphs.reverse!

  description = ""
  paragraphs.each do |p|
    description += p.text.strip
  end
  description.gsub!(/\[\d\]/, '')
  description.gsub!("(#{latin_name}) ", '')

  return [latin_name, description]
end

def scrape_and_print(bird)
  wiki_name = make_name_wiki(bird)
  p wiki_name + ":"
  p scrape_wiki(wiki_name)
end

bird = 'Pacific Gull'
scrape_and_print(bird)

bird = 'Pheasant pigeon'
scrape_and_print(bird)

bird = "WILSON'S STORM PETREL"
scrape_and_print(bird)
