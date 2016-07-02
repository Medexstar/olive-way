Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users

  root 'pages#landing'
  get   '/mens' => 'pages#mens'
  get   '/womens' => 'pages#womens'
  get   '/shirts' => 'pages#shirts'
  get   '/accessories' => 'pages#accessories'
  get   '/collection' => 'pages#collection'
  get   '/foundation' => 'pages#foundation'
  get   '/story' => 'pages#story'
  get   '/account' => 'pages#account'

  resources :order_objects, only: [:new, :create, :destroy]
  resources :suits, only: [:show]
end
