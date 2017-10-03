Rails.application.routes.draw do
  get 'sessions/new'

  get '', to: 'home#top'

  resources :users

  resources :tweets

  resources :sessions, only: [:new, :create, :destroy]
end
