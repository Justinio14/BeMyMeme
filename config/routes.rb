Rails.application.routes.draw do
  get 'users/edit'

  devise_for :users, :controllers => {registrations: 'registrations'}
  get "meme_gallery" => 'memes#meme_gallery', :as => :meme_gallery
  post "add" => 'memes#add', :as => :add
  resources :profiles, :memes
  resources :api, only: [:index]
  resources :users, only: [:edit,:update, :destroy]

  root to: "profiles#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
