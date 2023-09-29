Rails.application.routes.draw do
  devise_for :users
  resources :users, only: [:index, :show, :edit]
  resources :books, only: [:new, :index, :show, :create]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to:"homes#top"
  get 'homes/about' => 'homes#about', as:'about'
end
