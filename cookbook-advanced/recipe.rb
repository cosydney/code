require 'nokogiri'
require 'open-uri'

class Recipe
  CSV_ATTRIBUTES = [:name, :description, :ingredients, :prep_time, :votes, :cooked]

  attr_reader *CSV_ATTRIBUTES

  def initialize(attrs = {})
    @name = attrs[:name]
    @description = attrs[:description]
    @link = "http://www.marmiton.org#{attrs[:link]}"
    @votes = attrs[:votes]
    @cooked = attrs[:cooked]
  end

  def to_csv
    CSV_ATTRIBUTES.map { |attr| send(attr) }
  end

  def self.search(query)
    Nokogiri::HTML(open("http://www.marmiton.org/recettes/recherche.aspx?aqt=#{query}"), nil, 'utf-8')
    .search('.recette_classique')
    .inject([]) do |recipes, element|
      link = element.search('.m_titre_resultat a')

      recipes << Recipe.new(
        name: link.inner_text,
        link: link.attribute('href').text,
        votes: element.search('.m_recette_nb_votes').inner_text.gsub('(', '').to_i
      )
    end
  end

  def toggle
    @cooked = !@cooked
  end

  def import
    doc = Nokogiri::HTML(open(@link), nil, 'utf-8')
    @ingredients = doc.search('.m_content_recette_ingredients').inner_text
    @prep_time   = doc.search('.preptime').inner_text.to_i
    @description = doc.search('.m_content_recette_todo').inner_text
    self
  end
end
