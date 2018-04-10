Rails.application.routes.draw do
  namespace :page_admin do
    resources :home
  end
  namespace :login do
    resources :sessions_admin
  end
end
