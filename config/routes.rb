Rails.application.routes.draw do
  get 'sessions/new'

  get '', to: 'home#top'

  resources :users

  resources :tweets

  resources :sessions, only: [:new, :create, :destroy]

  resources :favorites, only: [:create, :destroy]

  if Rails.env.development?
    mount LetterOpenerWeb::Engine, at: "/letter_opener"
  end
end
