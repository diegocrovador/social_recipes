require 'rails_helper'

describe Recipe do
  it '#recents' do
    recipe_not_found = create(:recipe, name: 'Bolinho de Bacalhau')
    recipes = create_list(:recipe, 20)

    expect(Recipe.recents).to match recipes.reverse
    expect(Recipe.recents).to_not include recipe_not_found
  end
end
