Rails.application.routes.draw do
  get "/about", to: "page_home/about#index"
  get "/contact", to: "page_home/contact#index"
  get "/event", to: "page_home/event#index"
  get "/booking", to: "booking_ticket#index"
  get "/admin/schedules", to: "page_admin/schedules#index"
  get "/admin/schedules/new", to: "page_admin/schedules#new"
  post "/admin/schedules/new", to: "page_admin/schedules#create"
  root "page_home/home#index"

  namespace :page_home do
    resources :home
  end

  namespace :page_admin do
    resources :home
    resources :user
    resources :schedules
  end

  namespace :login do
    resources :sessions_admin
  end
end
