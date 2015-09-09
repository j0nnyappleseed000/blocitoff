Rails.application.routes.draw do

  devise_for :users
  resources :users, :show
    resources :items, only: [:create]

  get 'home/index'


  root :to => 'home#index'
end
