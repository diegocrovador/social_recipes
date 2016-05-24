class RecipesController < ApplicationController
  def new
    @recipe = Recipe.new
    @culinary = Culinary.all
  end

  def create
    @recipe = Recipe.create(recipe_params)
    redirect_to @recipe
  end

  def index
    @recipes = Recipe.all
  end

  def show
    @recipe = Recipe.find(params[:id])
  end

  private

  def recipe_params
    params.require(:recipe)
          .permit(:name, :food_type, :food_preference, :ingredients,
                  :description, :culinary_id)
  end
end
