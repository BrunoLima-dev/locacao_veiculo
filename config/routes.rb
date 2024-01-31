Rails.application.routes.draw do
  resources :clientes
  root 'veiculos#index'
  resources :marcas
  resources :veiculos
end
