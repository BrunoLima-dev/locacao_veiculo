Rails.application.routes.draw do
  resources :reservas
  resources :clientes
  root 'veiculos#index'
  resources :marcas
  resources :veiculos
end
