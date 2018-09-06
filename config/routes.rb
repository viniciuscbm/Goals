Rails.application.routes.draw do
  root 'home#index'
  devise_for :users
  resources :salesmen
  resources :stores
  resources :owners
  resources :goals do
    resources :days, only: %i[new create]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
