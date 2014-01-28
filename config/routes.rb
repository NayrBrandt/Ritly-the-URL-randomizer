Ritly::Application.routes.draw do
  root to: "urls#index"
  get "/about", to: "urls#about"
  post "/shorten", to: "urls#create"
  get "/show", to: "urls#show"

  get "/:id", to: "urls#original"
  end
