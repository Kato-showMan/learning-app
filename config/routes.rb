Rails.application.routes.draw do
  devise_for :users
  root to:"days#index"
  get "/new", to:"days#new"
  post "/create", to:"days#create"
  delete "/days/:id", to:"days#destroy"
  get "/days/:id/edit", to:"days#edit"
  patch "days/:id", to:"days#update"
end
