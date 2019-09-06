Rails.application.routes.draw do
  resources :musics
  devise_for :users
  root to: 'musics#index'
  get "/search", to: "musics#search"
  get "/artist", to: "musics#artist"
  resources :comments, only: [:create, :destroy]
end
