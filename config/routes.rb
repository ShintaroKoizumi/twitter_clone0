Rails.application.routes.draw do
  get 'sessions/new'

  get '', to: 'home#top'

  resources :users

  resources :tweets do
    collection do
      get :confirm
    end
  end

  resources :sessions, only: [:new, :create, :destroy]

  resources :favorites, only: [:create, :destroy]

  if Rails.env.development?
    mount LetterOpenerWeb::Engine, at: "/letter_opener"
  end
end
