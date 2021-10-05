Rails.application.routes.draw do
  devise_for :users

  root "pages#home"
  get "about", to: "pages#about"
  get "source", to: "pages#source"

  resources :orders, only: [:new, :create]
end
