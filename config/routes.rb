Rails.application.routes.draw do

  devise_for :users
  resources :users, :show

  get 'home/index'


 root :to => 'home#index'
end
