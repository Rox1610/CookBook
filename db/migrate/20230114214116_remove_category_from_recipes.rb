class RemoveCategoryFromRecipes < ActiveRecord::Migration[7.0]
  def change
    remove_column :recipes, :category, :string
  end
end
