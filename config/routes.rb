Rails.application.routes.draw do
  root 'recipes#index'
  resources :recipes, only: [:new, :index, :create, :show]
  get 'recipes/:category/:category_id', to: 'recipes#index', as: 'recipes_by_category'
end
