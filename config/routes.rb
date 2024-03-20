Rails.application.routes.draw do
  # Defines the root path route ("/")
  root "articles#index"

  get "/articles", to: "articles#index"
  get "/articles/new", to: "articles#new", as: "new_article"
  get "/articles/:id", to: "articles#show", as: "article"
  get "/articles/:id/edit", to: "articles#edit", as: "edit_article"
  post "/articles", to: "articles#create"
  patch "/articles/:id", to: "articles#update"
end
