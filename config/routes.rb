Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :items
  resources :areas
  resources :catalogues
  # General Search
  post "/search"    =>  "home#search"

  root "catalogues#index"
end
