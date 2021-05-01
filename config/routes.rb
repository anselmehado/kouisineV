Rails.application.routes.draw do
  #resources :posts
  get 'posts/index'
  get 'sessions/new'
  resources :sessions, only: [:new, :create, :destroy]
  resources :users, only: [:new, :create, :show]
  resources  :users
  #resources :users, only: [:new, :create, :show, :destroy, :edit]

  resources :posts do
  collection do
    post :confirm
  end
  end

  resources :favorites, only: [:create, :destroy]
  
end
