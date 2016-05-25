class RecipesController < ApplicationController
  def new
    @recipe = Recipe.new
    @culinary = Culinary.all
    @food_type = FoodType.all
    @food_preference = FoodPreference.all
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
          .permit(:name, :food_type_id, :food_preference_id, :ingredients,
                  :description, :culinary_id)
  end
end
