Rails.application.routes.draw do
  get "/desserts", to: "desserts#index"
  get "/desserts/new", to: "desserts#new"
  get "/desserts/:id", to: "desserts#show"
  get "/desserts/:id/edit", to: "desserts#edit"
  patch "/desserts/:id", to: "desserts#update"
  post "/desserts", to: "desserts#create"
  delete "/desserts/:id", to: "desserts#destroy"
end
