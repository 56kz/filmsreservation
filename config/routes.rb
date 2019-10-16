Rails.application.routes.draw do
  root 'films#index'
  # namespace :api do
  #   namespace :v1 do
  #   end
  # end
  resources :films, only: [:index, :new, :create]
  resources :reservations, only: [:index, :new, :create]
end
