Rails.application.routes.draw do
  get "home/about", to: "homes#about", as: :homes_about
  get "users/show"
  devise_for :users
  root to: "homes#top"
  resources :books, only: [:create, :index, :show, :edit, :update, :destroy] do
    resource :favorites, only: [:create, :destroy]
    resources :book_comments, only: [:create, :destroy]
  end

  resources :users, only: [:create, :index, :show, :edit, :update]
end