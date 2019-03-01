Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'users#index', as: 'home'

  resources :users
  resources :organisations
end
