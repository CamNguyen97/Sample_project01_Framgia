Rails.application.routes.draw do
  get "/about", to: "page_home/about#index"
  get "/contact", to: "page_home/contact#index"
  get "/event", to: "page_home/event#index"
  get "/booking", to: "booking_ticket#index"
  get "/signup", to: "users#new"
  post "/signup", to: "users#create"
  root "page_home/home#index"
  resources :users
  

  namespace :page_home do
    resources :home
  end

  namespace :page_admin do
    resources :home
  end
end
