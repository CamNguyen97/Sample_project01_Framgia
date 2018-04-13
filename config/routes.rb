Rails.application.routes.draw do
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
  end

  namespace :login do
    resources :sessions_admin
  end
end
