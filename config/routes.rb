Rails.application.routes.draw do
  resources :revists
  resources :enologos
  resources :cepas
  resources :vinos
  
  root 'vinos#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
