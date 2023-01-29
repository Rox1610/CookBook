class CategoriesController < ApplicationController
  def index
    if params[:query].present?
      @recipes = Recipe.search_by_title_description_and_ingredients(params[:query])
    else
      @categories = Category.all
    end
  end

  def show
    @category = Category.friendly.find(params[:id])
    @recipes = @category.recipes
  end

  private

  def set_category
    @category = Category.friendly.find(params[:category_id])
  end
end
