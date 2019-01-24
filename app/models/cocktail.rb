class Cocktail < ApplicationRecord
  has_many :doses, dependent: :destroy
  has_many :ingredients, through: :doses

  # A cocktail must have a unique name.
  # validates :name, presence: true, uniqueness: true
  validates :name, uniqueness: true, length: { minimum: 1 }
  # mount_uploader :photo, PhotoUploader
end
