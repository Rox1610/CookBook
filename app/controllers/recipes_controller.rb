class RecipesController < ApplicationController
  before_action :set_recipe, only: %i[show update]

  def index
  end

  def category
    if params[:query].present?
      @recipes = Recipe.search_by_title_description_and_ingredients(params[:query])
    else
      @recipes = Recipe.all
    end
  end

  def show
  end

  def new
    @recipe = Recipe.new
  end

  def create
    @recipe = Recipe.new(recipe_params)
    @recipe.user = current_user
    if @recipe.save
      redirect_to recipes_path
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
    @recipe = Recipe.find(params[:id])
  end

  def recipe_params
    params.require(:recipe).permit(:title, :rich_body, :ingredients, :photo)
  end
end
