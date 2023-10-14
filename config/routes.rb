Rails.application.routes.draw do
  devise_for :users
  resources :users, only: [:show]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "top" => "posts#top"
  resources :posts do
    resources :likes, only: [:create, :destroy]
  end
  root "posts#top"

  resources :perfumes
end
