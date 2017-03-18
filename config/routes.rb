Rails.application.routes.draw do
  get 'users/edit'

  devise_for :users, :controllers => {registrations: 'registrations'}

  resources :profiles, :memes

  resources :chats, only: [:index, :create] do
    member do
     post :close
    end
    resources :messages, only: [:create]
  end

  resources :api, only: [:index]
  resources :users, only: [:edit,:update, :destroy]

  root to: "profiles#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
