class RemoveFoodTypeFromRecipes < ActiveRecord::Migration
  def change
    remove_column :recipes, :food_type, :integer
  end
end
