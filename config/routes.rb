Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :films, only: [:index, :new, :create]
  resources :reservations, only: [:index, :new, :create]
end
