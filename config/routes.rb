Rails.application.routes.draw do
  root 'text#index'
  devise_for :users
  resources :text, only: [:new, :create, :edit, :update, :destroy]
end
# rootを上にしないとredirectエラーが出る