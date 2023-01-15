Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"

  get '/about', to: 'pages#about', as: 'about'

  resources :categories, only: %i[index] do
    resources :recipes, only: %i[index]
  end

  resources :recipes, only: %i[show new create destroy]
end
