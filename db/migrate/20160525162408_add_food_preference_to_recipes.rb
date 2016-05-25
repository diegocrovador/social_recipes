class AddFoodPreferenceToRecipes < ActiveRecord::Migration
  def change
    add_column :recipes, :food_preference, :string
    add_reference :recipes, :food_preference, index: true, foreign_key: true
  end
end
