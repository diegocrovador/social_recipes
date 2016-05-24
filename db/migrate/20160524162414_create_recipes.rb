class CreateRecipes < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
      t.string :name
      t.string :food_type
      t.string :food_preference
      t.string :ingredients
      t.string :description
      t.references :culinary, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
