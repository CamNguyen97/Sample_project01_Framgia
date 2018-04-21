Rails.application.routes.draw do
  root "homes#index"

  get "/about", to: "abouts#index"
  get "/contact", to: "contacts#index"
  get "/event", to: "events#index"
  get "/booking", to: "booking_tickets#index"
  get "/movies", to: "movies#index"
  get "/schedules", to: "schedules#index"
  get "/signup", to: "users#new"
  post "/signup", to: "users#create"
  get "/login", to: "sessions#new"
  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"

  get "/admin/studio", to: "page_admin/studios#index"
  get "/admin/studio/new", to: "page_admin/studios#new"
  post "/admin/studio/new", to: "page_admin/studios#create"
  get "/admin/seats", to: "page_admin/seats#index"
  get "/admin/seats/new", to: "page_admin/seats#new"
  post "/admin/seats/new", to: "page_admin/seats#create"
  get "/admin/schedules", to: "page_admin/schedules#index"
  get "/admin/schedules/new", to: "page_admin/schedules#new"
  post "/admin/schedules/new", to: "page_admin/schedules#create"
  get "/admin/movies", to: "page_admin/movies#index"
  get "/admin/movies/new", to: "page_admin/movies#new"
  get "/admin/movies/new", to: "page_admin/movies#create"
  get "/admin/user", to: "page_admin/users#index"
  get "/admin/Movietype", to: "page_admin/movietypes#index"
  get "/admin/Movietype/new", to: "page_admin/movietypes#new"
  post "/admin/Movietype/new", to: "page_admin/movietypes#create"
  get "/admin/Movietype/update", to: "page_admin/movietypes#edit"
  patch "/admin/Movietype/upadte", to: "page_admin/movietypes#update"
  delete "/page_admin/movietypes/:id(.:format)", :to => "page_admin/movietypes#destroy"

  namespace :page_admin do
    resources :studios
    resources :seats
    resources :schedules
    resources :homes
    resources :user
    resources :movietypes
    resources :bookings
    resources :tickets
   end

  resources :users
  resources :movies
  resources :homes
  resources :schedules
  resources :account_activations, only: [:edit]
  resources :password_resets, only: [:new, :create, :edit, :update]
end
