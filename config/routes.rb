Rails.application.routes.draw do
  root to: "cars#index"

  resources :cars, only: [:show, :new, :create]

end
