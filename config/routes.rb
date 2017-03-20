Rails.application.routes.draw do
  get 'users/edit'

  devise_for :users, :controllers => {registrations: 'registrations'}
  get "meme_gallery" => 'memes#meme_gallery', :as => :meme_gallery
  post "add" => 'memes#add', :as => :add
  resources :profiles, :memes
  resources :api, :home, only: [:index]

  resources :chats, only: [:index, :create] do
    member do
     post :close
    end
  end

  resources :users, only: [:edit,:update, :destroy, :show]

  root to: "home#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
