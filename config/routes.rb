Rails.application.routes.draw do
  get "/about", to: "page_home/about#index"
  get "/contact", to: "page_home/contact#index"
  get "/event", to: "page_home/event#index"
  get "/booking", to: "booking_ticket#index"
  get "/admin/movies", to: "page_admin/movies#index"
  get "/admin/movies/new", to: "page_admin/movies#new"
  get "/admin/movies/new", to: "page_admin/movies#create"
  root "page_home/home#index"

  namespace :page_home do
    resources :home
  end

  namespace :page_admin do
    resources :home
    resources :user
    resources :movies
  end

  namespace :login do
    resources :sessions_admin
  end
end
