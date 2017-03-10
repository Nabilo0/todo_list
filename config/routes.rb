Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
resources :users, only: [:show, :edit, :update]


get "joke_found" => "static#joke_found"
root "static#index"


end
