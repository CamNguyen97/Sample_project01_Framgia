Rails.application.routes.draw do
  get "/about", to: "page_home/about#index"
  get "/contact", to: "page_home/contact#index"
  get "/event", to: "page_home/event#index"
  get "/booking", to: "booking_ticket#index"
  get "/admin/seats", to: "page_admin/seats#index"
  get "/admin/seats/new", to: "page_admin/seats#new"
  post "/admin/seats/new", to: "page_admin/seats#create"
  get "/admin/schedules", to: "page_admin/schedules#index"
  get "/admin/schedules/new", to: "page_admin/schedules#new"
  post "/admin/schedules/new", to: "page_admin/schedules#create"
  get "/admin/movies", to: "page_admin/movies#index"
  get "/admin/movies/new", to: "page_admin/movies#new"
  get "/admin/movies/new", to: "page_admin/movies#create"
  get "/movie", to: "page_home/movie#index"
  get "/schedules", to: "schedules#index"
  get "/signup", to: "page_admin/users#new"
  post "/signup", to: "page_admin/users#create"
  get "/login", to: "page_admin/sessions#new"
  post "/login", to: "page_admin/sessions#create"
  delete "/logout", to: "page_admin/sessions#destroy"
  root "page_home/home#index"
  get "/admin/user", to: "page_admin/users#index"
  get "/admin/Movietype", to: "page_admin/movietypes#index"
  get "/admin/Movietype/new", to: "page_admin/movietypes#new"
  post "/admin/Movietype/new", to: "page_admin/movietypes#create"
  get "/admin/Movietype/update", to: "page_admin/movietypes#edit"
  patch "/admin/Movietype/upadte", to: "page_admin/movietypes#update"
  delete "/page_admin/movietypes/:id(.:format)", :to => "page_admin/movietypes#destroy"

  namespace :page_home do
    resources :home
  end

  namespace :page_admin do
    resources :seats
    resources :schedules
    resources :homes
    resources :users
    resources :movietypes
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
   end

  namespace :login do
    resources :sessions_admin
    resources :users
    resources :account_activations, only: [:edit]
    resources :sessions
    resources :password_resets, only: [:new, :create, :edit, :update]
  end
end
