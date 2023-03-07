Rails.application.routes.draw do
  root to: "movies#index"
  resources :movies, only: [:index, :update]

  # ajax examples: three pages that do the same thing (a simple ajax request) in 3 different ways.
  get 'xhr-example', to: 'pages#xhr_example'
  get 'fetch-example', to: 'pages#fetch_example'
  get 'fetch-example-modern', to: 'pages#fetch_example_modern'
end
