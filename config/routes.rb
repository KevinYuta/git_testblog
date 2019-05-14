Rails.application.routes.draw do
  root 'text#index'
  resourses :text,only: [:new, :create, :show, :edit, :update, :destroy]
end
