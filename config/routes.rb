Rails.application.routes.draw do
  root 'veiculos#index'
  resources :marcas
  resources :veiculos
end
