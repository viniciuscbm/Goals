Rails.application.routes.draw do
  resources :goals
  resources :salesmen
  resources :stores
  resources :owners
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
