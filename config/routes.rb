Rails.application.routes.draw do
  get 'administrador/login', to: 'login_administrador#login'
  get 'administrador/logout', to: 'login_administrador#logout'
  # rotas da api
  get 'estados', to: 'estados#index'
  get 'cidades', to: 'estados#lista_cidades'
  # final das rotas da api

  post 'administrador/logar', to: 'login_administrador#logar'

  resources :administradors
  resources :reservas
  resources :clientes
  resources :veiculos
  resources :marcas
  # root 'veiculos#index'
  root 'homes#index'
end
