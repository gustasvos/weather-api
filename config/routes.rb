Rails.application.routes.draw do
  resources :cities
  get '/error', to: 'cities#error'
  post '/locations', to: "cities#index"
  root "cities#new"
end
