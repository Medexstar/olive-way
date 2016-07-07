Rails.application.routes.draw do
  devise_for :users, :controllers => {:registrations => "registrations"}
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  root 'pages#beta'
  get   '/landing' => 'pages#landing'
  get   '/mens' => 'pages#mens'
  get   '/womens' => 'pages#womens'
  get   '/shirts' => 'pages#shirts'
  get   '/accessories' => 'pages#accessories'
  get   '/collections' => 'pages#collections'
  get   '/collection' => 'pages#collection'
  get   '/foundation' => 'pages#foundation'
  get   '/story' => 'pages#story'
  get   '/account' => 'pages#account'
  get   '/account_hub' => 'pages#account_hub'
  get   '/orders' => 'pages#orders'
  get   '/order' => 'pages#order'
  get   '/measurements' => 'pages#measurements'
  patch '/measurements' => 'pages#measurements_update'
  post  '/measurements' => 'pages#measurements_update'
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
