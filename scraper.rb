require 'open-uri'
require 'nokogiri'

require 'pry-byebug'

def make_name_wiki(bird_name)
  parts = bird_name.split(' ')
  parts_down = parts.map &:downcase
  parts_down[0].capitalize!
  parts_down.join('_').gsub(/'/, '%27')
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
  while i < 20 do
    break if wiki_children[i].attributes["id"] && wiki_children[i].attributes["id"].content == "toc"
    first_n << wiki_children[i]
    i += 1
  end

  first_n.reverse!
  paragraphs = []
  j = 0
  while j < first_n.length do
    break if first_n[j].attributes["class"] && first_n[j].attributes["class"].content == "infobox biota"
    paragraphs << first_n[j]
    j += 1
  end

  paragraphs.reverse!
  info = ""

  paragraphs.each do |p|
    info += p.text.strip
  end

  info.gsub!(/\[\d\]/, '')
  info.gsub(" (#{latin_name})", '')
end

def get_description(wiki_children)
  all_children = []
  wiki_children.each { |child| all_children << child }
  all_children.reverse!
  last_n = []

  i = 1
  while i < all_children.length do
    break if all_children[i].children[0] && all_children[i].children[0].attributes["id"] && all_children[i].children[0].attributes["id"].content == "Description"
    last_n << all_children[i]
    i += 1
  end

  description = last_n[last_n.length - 5].text.strip
end

def scrape_and_print(bird)
  wiki_name = make_name_wiki(bird)
  doc = get_content(wiki_name)
  latin_name = get_latin_name(doc)
  wiki_children = get_children(doc)
  info = get_info(wiki_children, latin_name)

  p wiki_name + ":"
  p latin_name
  p info

end

bird = 'Grey parrot'
scrape_and_print(bird)

bird = 'Yellow-billed magpie'
scrape_and_print(bird)

bird = "WILSON'S STORM PETREL"
scrape_and_print(bird)
