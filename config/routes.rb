Rails.application.routes.draw do
  resources :users
  resources :scores
  resources :games
  resources :dogs
  resources :messages
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
