class Recipe < ApplicationRecord
  has_rich_text :rich_body
  has_one_attached :photo
  belongs_to :user
  belongs_to :category

  extend FriendlyId
  friendly_id :title, use: :slugged

  include PgSearch::Model

  pg_search_scope :search_by_title_description_and_ingredients,
                  against: %i[title description ingredients],
                  using: {
                    tsearch: { prefix: true }
                  }
end
