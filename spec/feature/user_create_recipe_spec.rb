require 'rails_helper'

feature 'user create recipe' do
  scenario 'successfully' do
    culinary = create(:culinary, name: 'Jamaicana')
    recipe = build(:recipe)

    visit new_recipe_path

    fill_in 'Nome',                     with: recipe.name
    select  culinary.name,              from: 'Cozinha'
    fill_in 'Tipo de Comida',           with: recipe.food_type
    fill_in 'Preferência de Comida',    with: recipe.food_preference
    fill_in 'Ingredientes',             with: recipe.ingredients
    fill_in 'Passo a Passo',            with: recipe.description

    click_on 'Criar Receita'

    expect(page).to have_content recipe.name
    expect(page).to have_content culinary.name
    expect(page).to have_content recipe.food_type
    expect(page).to have_content recipe.food_preference
    expect(page).to have_content recipe.ingredients
    expect(page).to have_content recipe.description
  end
end
