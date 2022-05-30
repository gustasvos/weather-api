Rails.application.routes.draw do
  get '/locations', to: "cities#get_locations"
  resources :cities
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
