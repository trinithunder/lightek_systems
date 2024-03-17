Rails.application.routes.draw do
  resources :interests
  resources :devices
  resources :groups
  resources :dashboards
  resources :admin_dashboards
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

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Devise routes
  devise_for :users, controllers: {
    sessions: 'users/sessions',           # Custom sessions controller
    registrations: 'users/registrations' # Custom registrations controller
    # Add other Devise controllers you've customized
  }

  # Defines the root path route ("/")
  # root "posts#index"
end
