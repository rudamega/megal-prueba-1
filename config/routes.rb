Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "ocupados", to: 'pages#ocupados'
  get "mantenimientos", to: 'pages#mantenimientos'
  get "disponibles", to: 'pages#disponibles'
  get "limpiezas", to: 'pages#limpiezas'
end
