require 'rails_helper'

feature 'user navigate with navbar' do
  scenario 'user access new recipe' do
    visit root_path

    within '.navbar' do
      click_on 'Cadastrar Receita'

      expect(current_path).to eq new_recipe_path
    end
  end
end
