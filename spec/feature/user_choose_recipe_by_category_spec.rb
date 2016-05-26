require 'rails_helper'

feature 'User choose recipe by category' do
  scenario 'culinary' do
    culinary = create(:culinary, name: 'Mineira')

    recipe = create(:recipe, name: 'Feijão Tropeiro', culinary: culinary)
    recipe_not_to_appear = create(:recipe)

    visit root_path

    click_on 'Mineira'

    expect(page).to have_content recipe.name
    expect(page).to_not have_content recipe_not_to_appear.name
  end

  scenario 'food type' do
    food_type = create(:food_type, name: 'Vegana')

    recipe = create(:recipe, name: 'Feijão Tropeiro', food_type: food_type)
    recipe_not_to_appear = create(:recipe)

    visit root_path

    click_on 'Vegana'

    expect(page).to have_content recipe.name
    expect(page).to_not have_content recipe_not_to_appear.name
  end

  scenario 'food preference' do
    food_preference = create(:food_preference, name: 'Frutas')

    recipe = create(:recipe, name: 'Feijão Tropeiro',
                             food_preference: food_preference)
    recipe_not_to_appear = create(:recipe)

    visit root_path

    click_on 'Frutas'

    expect(page).to have_content recipe.name
    expect(page).to_not have_content recipe_not_to_appear.name
  end
end
