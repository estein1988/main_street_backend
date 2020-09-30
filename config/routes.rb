Rails.application.routes.draw do
  resources :financials
  resources :businesses, only: [:index, :create]
  get '/profile', to: 'businesses#profile'

  post '/login', to: 'authentication#login'
end
