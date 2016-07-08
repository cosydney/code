class Recipe
  attr_reader :name, :description

  def initialize(attrs = {})# David
    @name = attrs[:name]
    @description = attrs[:description]
  end

  def to_csv
    [@name, @description]
  end
end
