class Cocktail < ApplicationRecord
  has_many :doses, dependent: :destroy
  has_many :ingredients, through: :doses

  # A cocktail must have a unique name.
  validates :name, presence: true, uniqueness: true
end
