Rails.application.routes.draw do
  devise_for :users

  root "pages#home"
  get "about", to: "pages#about"
  get "source", to: "pages#source"

  resources :orders, only: [:new, :create]

  namespace :api do
    resources :payment, only: [] do
      collection do
        post :return
        post :backend
      end
    end
  end
end
