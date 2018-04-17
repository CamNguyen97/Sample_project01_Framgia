Rails.application.routes.draw do
  get "/about", to: "page_home/about#index"
  get "/contact", to: "page_home/contact#index"
  get "/event", to: "page_home/event#index"
  get "/booking", to: "booking_ticket#index"
  root "page_home/home#index"

  namespace :page_home do
    resources :home
  end

  namespace :page_admin do
    resources :home
    resources :user
    resources :movietype
  end

  namespace :login do
    resources :sessions_admin
  end
end
