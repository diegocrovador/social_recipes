class CreateRecipes < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
      t.string :name
      t.string :culinary
      t.string :food_type
      t.string :food_preference
      t.text :ingredients
      t.text :description

      t.timestamps null: false
    end
  end
end
