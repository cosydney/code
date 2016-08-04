class Cocktail < ActiveRecord::Base
  has_many :doses
  has_many :ingredients, through: :doses

  accepts_nested_attributes_for :doses, reject_if: proc { |d| d['description'].blank? }
end
