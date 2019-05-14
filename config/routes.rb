Rails.application.routes.draw do
  root 'text#index'
  resources :text,only: [:new, :create, :show, :edit, :update, :destroy]
end
