Rails.application.routes.draw do
  resources :ratings
  resources :homeworks
  resources :school_categories
  resources :quizzes
  resources :answers
  resources :questions
  resources :courses
  resources :follows
  resources :money_categories
  resources :categories
  resources :products
  resources :carts
  resources :cards
  resources :matches
  resources :message
  resources :likes
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
end
