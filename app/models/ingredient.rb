class Ingredient < ApplicationRecord
  has_many :doses
  has_many :cocktails, through: :doses
  # An ingredient must have a unique name.
  validates :name, presence: true, uniqueness: true
  # validates :name, uniqueness: true, length: { minimum: 1 }
end
