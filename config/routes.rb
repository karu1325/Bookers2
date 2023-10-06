Rails.application.routes.draw do
  devise_for :users
  resources :users, only: [:index, :show, :edit, :update]
  resources :books, only: [:new, :index, :show, :create, :edit, :destroy, :update]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to:"home#top"
  get 'home/about' => 'home#about', as:'about'
end
