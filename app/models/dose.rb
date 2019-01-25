class Dose < ApplicationRecord
  belongs_to :ingredient
  belongs_to :cocktail

  validates :description, presence: true
  validates :cocktail, uniqueness: { scope: :ingredient }
  # validates :ingredient, uniqueness: { scope: :cocktail }

  # [cocktail, ingredient] pairings should be unique.
  # validates_uniqueness_of :cocktail_id, :scope => [:ingredient_id]

  # validates :description, :cocktail_id, :ingredient_id, presence: true
  # validates_uniqueness_of :cocktail_id, scope: %i[ingredient_id]

end
