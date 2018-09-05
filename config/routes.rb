Rails.application.routes.draw do
  root 'home#index'
  devise_for :users
  resources :salesmen
  resources :stores
  resources :owners
  resources :goals do
    get :days, to: "goals#get_days"
    post :days, to: "goals#set_days", on: :collection
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
