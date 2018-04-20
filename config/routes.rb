Rails.application.routes.draw do
  get "/about", to: "page_home/about#index"
  get "/contact", to: "page_home/contact#index"
  get "/event", to: "page_home/event#index"
  get "/booking", to: "booking_ticket#index"
  get "/movie", to: "page_home/movie#index"
  get "/schedules", to: "schedules#index"
  get "/signup", to: "page_admin/users#new"
  post "/signup", to: "page_admin/users#create"
  get "/login", to: "page_admin/sessions#new"
  post "/login", to: "page_admin/sessions#create"
  delete "/logout", to: "page_admin/sessions#destroy"
  root "page_home/home#index"
  get "/signup", to: "users#new"
  post "/signup", to: "users#create"
  root "page_home/home#index"
  resources :users
  get "/about", to: "abouts#index"
  get "/contact", to: "contacts#index"
  get "/event", to: "events#index"
  get "/booking", to: "booking_tickets#index"
  # get "/movie", to: "home#show"
  root "homes#index"
  resources :movies
  # namespace :page_home do
  resources :homes
  # end

  namespace :page_admin do
    resources :home
    resources :user
    resources :tickets
    resources :bookings
  end

  namespace :login do
    resources :sessions_admin
    resources :users
    resources :account_activations, only: [:edit]
    resources :sessions
    resources :password_resets, only: [:new, :create, :edit, :update]
  end
end

