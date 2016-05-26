class RecipesController < ApplicationController
  before_action :set_categories

  def new
    @recipe = Recipe.new
    @culinary = Culinary.all
    @food_type = FoodType.all
    @food_preference = FoodPreference.all
  end

  def create
    @recipe = Recipe.create(recipe_params)
    if @recipe.save
      redirect_to @recipe
    else
      render :new
    end
  end

  def index
    @recipes = Recipe.recents
    @culinaries = Culinary.all

    if params[:category]
      @recipes = Recipe.where(params[:category].to_sym => params[:category_id])
    end

    render :recipes_by_category if params[:category]
  end

  def show
    @recipe = Recipe.find(params[:id])
  end

  private

  def set_categories
    @culinaries = Culinary.all
    @food_types = FoodType.all
    @food_preferences = FoodPreference.all
  end

  def recipe_params
    params.require(:recipe)
          .permit(:name, :food_type_id, :food_preference_id, :ingredients,
                  :description, :culinary_id)
  end
end
