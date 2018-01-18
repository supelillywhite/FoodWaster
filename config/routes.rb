Rails.application.routes.draw do
  resources :meals
  devise_for :users
  root to: 'static#homepage'
end
