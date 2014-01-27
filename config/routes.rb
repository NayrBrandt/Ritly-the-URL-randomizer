Ritly::Application.routes.draw do
  root to: "urls#index"
  get "/about", to: "urls#about"
  post "/link", to: "urls#new"
  get "/index", to: "urls#new"
  end
