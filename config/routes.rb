Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "/notes/new", controller: "notes", action: "new"
  post "/notes", controller: "notes", action: "create"

  get "/", controller: "notes", action: "index"
end
