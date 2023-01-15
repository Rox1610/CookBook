class Category < ApplicationRecord
  has_many :recipes

  validates :name, inclusion: %w[Déjeuner Entrée/Soupe Lunch Souper Dessert Divers]
end
