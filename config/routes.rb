Rails.application.routes.draw do
  # Defines the root path route ("/")
  root "articles#index"

  get "/articles", to: "articles#index"
  get "/articles/new", to: "articles#new", as: "new_article"
  get "/articles/:id", to: "articles#show", as: "article"
  post "/articles", to: "articles#create"
end
