Rails.application.routes.draw do
  resources :marcas
  root 'veiculos#index'
  resources :veiculos
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
