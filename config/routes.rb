Rails.application.routes.draw do
  devise_for :users, :controllers => {registrations: 'registrations'}

  resources :profiles, :memes
  resources :api, only: [:index]
  resources :chats, only: [:new, :create, :show, :index]

  root to: "profiles#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
