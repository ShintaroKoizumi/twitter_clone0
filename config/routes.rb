Rails.application.routes.draw do
  get '', to: 'home#top'

  resources :tweets do
  end
end
