Rails.application.routes.draw do
  devise_for :users
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  root 'pages#beta'
  get   '/landing' => 'pages#landing'
  get   '/mens' => 'pages#mens'
  get   '/womens' => 'pages#womens'
  get   '/shirts' => 'pages#shirts'
  get   '/accessories' => 'pages#accessories'
  get   '/collection' => 'pages#collection'
  get   '/foundation' => 'pages#foundation'
  get   '/story' => 'pages#story'
  get   '/account' => 'pages#account'
  get   '/faq' => 'pages#faq'
  get   '/guarantee' => 'pages#guarantee'
  get   '/how' => 'pages#how'
  get   '/privacy' => 'pages#privacy'
  get   '/ship_return' => 'pages#ship_return'

  get   '/profile'  => 'address#edit'
  patch '/profile'  => 'address#update'
  post  '/profile'  => 'address#update'
  resources :orders, only: [:new]
  resources :order_objects, only: [:new, :create, :destroy]
  resources :suits, only: [:show]
  resources :accessories, only: [:show]
  resources :charges, only: [:create]
end
