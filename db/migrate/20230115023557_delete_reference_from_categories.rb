class DeleteReferenceFromCategories < ActiveRecord::Migration[7.0]
  def change
    remove_reference :categories, :recipe, index: true, foreign_key: true

    add_reference :recipes, :category, index: true, foreign_key: true
  end
end
