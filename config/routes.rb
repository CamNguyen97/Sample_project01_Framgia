Rails.application.routes.draw do
  get "/about", to: "page_home/about#index"
  get "/contact", to: "page_home/contact#index"
  get "/event", to: "page_home/event#index"
  get "/booking", to: "booking_ticket#index"
  root "page_home/home#index"
  get "/admin/user", to: "page_admin/users#index"
  get "/admin/Movietype", to: "page_admin/movietypes#index"
  get "/admin/Movietype/new", to: "page_admin/movietypes#new"
  post "/admin/Movietype/new", to: "page_admin/movietypes#create"
  get "/admin/Movietype/update", to: "page_admin/movietypes#edit"
  patch "/admin/Movietype/upadte", to: "page_admin/movietypes#update"
  delete "/page_admin/movietypes/:id(.:format)", :to => "page_admin/movietypes#destroy"
  root "page_home/homes#index"

  namespace :page_home do
    resources :home
  end

  namespace :page_admin do
    resources :homes
    resources :users
    resources :movietypes
  end

  namespace :login do
    resources :sessions_admin
  end
end
