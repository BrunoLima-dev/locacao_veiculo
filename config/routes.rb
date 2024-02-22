Rails.application.routes.draw do
  get 'administrador/login', to: 'login_administrador#login'
  get 'administrador/logout', to: 'login_administrador#logout'

  post 'administrador/logar', to: 'login_administrador#logar'

  resources :administradors
  resources :reservas
  resources :clientes
  resources :veiculos
  resources :marcas
  root 'veiculos#index'
end
