Rails.application.routes.draw do
  devise_for :users
  root 'text#index'
  resources :text, only: [:new, :create, :show, :edit, :update, :destroy]
end
