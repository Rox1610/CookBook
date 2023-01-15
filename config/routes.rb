Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"

  get '/about', to: 'pages#about', as: 'about'

  resources :categories, only: %i[index show] do
    resources :recipes, only: %i[new create]
  end

  resources :recipes, only: %i[show destroy]
end
