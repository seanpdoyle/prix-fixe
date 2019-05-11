Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :notes, only: [:new, :create, :index]

  root to: redirect("/notes")
end
