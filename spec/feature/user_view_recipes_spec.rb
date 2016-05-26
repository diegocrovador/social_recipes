require 'rails_helper'

feature 'user view recipes' do
  scenario 'successfully' do
    recipes = create_list(:recipe, 3)

    visit recipes_path

    expect(page).to have_content recipes[0].name
    expect(page).to have_content recipes[0].food_preference.name
    expect(page).to have_content recipes[1].food_type.name
    expect(page).to have_content recipes[2].culinary.name
  end

  scenario 'last recipes created' do
    recipe_not_found = create(:recipe, name: 'Bolinho de Bacalhau')
    recipes = create_list(:recipe, 20)

    visit root_path

    recipes.each do |recipe|
      within("#recipe-#{recipe.id}") do
        expect(page).to have_content 'Lasanha'
      end
    end
    expect(page).to_not have_content recipe_not_found.name
  end
end
