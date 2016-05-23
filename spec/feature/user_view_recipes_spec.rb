require 'rails_helper'

feature 'user view recipes' do
  scenario 'successfully' do
    recipes = create_list(:recipe, 3)

    visit recipes_path

    expect(page).to have_content recipes[0].name
    expect(page).to have_content recipes[0].food_preference
    expect(page).to have_content recipes[1].food_type
    expect(page).to have_content recipes[2].culinary
  end
end
