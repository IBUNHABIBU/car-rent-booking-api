Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :sessions, only: [:create]
  resources :users, only: [:create]
  
  namespace :api do
    namespace :v1 do   
      get "cars/recent", to: "cars#index", scope: "recent"
      resources :cars
      resources :bookings
    end
  end
  delete :logout, to: "sessions#logout"
  get :logged_in, to: "sessions#logged_in"
end
