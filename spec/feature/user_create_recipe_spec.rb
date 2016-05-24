require 'rails_helper'

feature 'user create recipe' do
  scenario 'successfully' do
    culinary = create(:culinary, name: 'Jamaicana')
    food_type = create(:food_type, name: 'Principal')
    recipe = build(:recipe)

    visit new_recipe_path

    fill_in 'Nome',                     with: recipe.name
    select  culinary.name,              from: 'Cozinha'
    select  food_type.name,             from: 'Tipo de Comida'
    fill_in 'Preferência de Comida',    with: recipe.food_preference
    fill_in 'Ingredientes',             with: recipe.ingredients
    fill_in 'Passo a Passo',            with: recipe.description

    click_on 'Criar Receita'

    expect(page).to have_content recipe.name
    expect(page).to have_content culinary.name
    expect(page).to have_content food_type.name
    expect(page).to have_content recipe.food_preference
    expect(page).to have_content recipe.ingredients
    expect(page).to have_content recipe.description
  end
end
