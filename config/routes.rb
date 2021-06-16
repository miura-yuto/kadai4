Rails.application.routes.draw do
  get "home/about", to: "homes#about", as: :homes_about
  get "homes/about"  => "homes#about"
  get "users/show"
  devise_for :users
  root to: "homes#top"
  resources :books, only: [:create, :index, :show, :edit, :update, :destroy]
  resources :users, only: [:create, :index, :show, :edit, :update]
end