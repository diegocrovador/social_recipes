class AddFoodTypeToRecipes < ActiveRecord::Migration
  def change
    add_column :recipes, :food_type, :integer
    add_reference :recipes, :food_type, index: true, foreign_key: true
  end
end
