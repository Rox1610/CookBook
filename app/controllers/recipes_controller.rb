class RecipesController < ApplicationController
  before_action :set_recipe, only: %i[show update]
  before_action :set_category, only: %i[new create]

  def show
  end

  def new
    @recipe = Recipe.new
  end

  def create
    @recipe = Recipe.new(recipe_params)
    @recipe.user = current_user
    @recipe.category = @category
    if @recipe.save
      redirect_to categories_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def update
    @recipe.update(recipe_params)
    redirect_to recipe_path(@recipe)
  end

  private

  def set_recipe
    @recipe = Recipe.friendly.find(params[:id])
  end

  def recipe_params
    params.require(:recipe).permit(:title, :rich_body, :ingredients, :photo)
  end

  def set_category
    @category = Category.friendly.find(params[:category_id])
  end
end
