Ritly::Application.routes.draw do
  resources :users, :sessions

  root to: "urls#index"
  get 'signup', to: "users#new"
  delete 'signout', to: 'sessions#destroy'
  get 'signin', to: 'sessions#new'

  get "/about", to: "urls#about"
  post "/shorten", to: "urls#create"
  get "/show", to: "urls#show"

  get "/:id", to: "urls#original"
  end
