Rails.application.routes.draw do
  get 'about/index'
  get 'home/index'
  get 'locations/index'
  get 'locations/show'
  get 'parks/index'
  get 'parks/show'
  get 'neighbourhoods/index'
  get 'neighbourhoods/show'
  get 'park/index'
  get 'park/show'
  get 'trees/index'
  get 'trees/show'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  root 'home#index'
  resources :trees, only: [:index, :show]
  get '/about', to: 'about#index'
  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
end
