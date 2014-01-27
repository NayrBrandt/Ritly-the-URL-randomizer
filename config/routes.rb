Ritly::Application.routes.draw do
  root to: "urls#index"
  get "/about", to: "urls#about"
  post "/address", to: "urls#create"

  end
