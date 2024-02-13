Rails.application.routes.draw do
  get 'login_administrador/signin'
  resources :administradors
  resources :reservas
  resources :clientes
  root 'veiculos#index'
  resources :marcas
  resources :veiculos
end
