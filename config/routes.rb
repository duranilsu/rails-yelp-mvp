Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  # get "/restaurants", to: "restaurants#index"
  # get "/restaurants/new", to: "restaurants#new", as: :new_restaurant
  # post "/restaurants", to: "restaurants#create"
  # get '/restaurants/:id', to: "restaurants#show", as: :restaurant
  # get "/restaurants/:id/reviews/new", to: "restaurants#new_review", as: :new_review
  # post "/restaurants/:id/reviews", to: "restaurants#show_reviews", as: :restaurant_reviews


  resources :restaurants, only: [:new, :create, :show, :index] do
    resources :reviews, only: [:new, :create]
  end
end
