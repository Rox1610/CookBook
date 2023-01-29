class Category < ApplicationRecord
  has_many :recipes

  extend FriendlyId
  friendly_id :name, use: :slugged

  validates :name, inclusion: %w[Déjeuner Entrée/Soupe Lunch Souper Dessert Divers]
end
