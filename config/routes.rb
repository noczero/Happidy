Rails.application.routes.draw do
 
  get 'landing/index'
  	  root to: 'landing#index'

  get 'pages/home' , to: 'pages#home', as: 'dashboard'
  devise_for :users , :controllers => {:registrations => "registrations"}
  resources :materis
  #get 'pages/manage_user'=> 'pages#manage_user'
  get 'pages/manage_user', to: 'pages#manage_user', as: 'konfirmasi_pembayaran'
  get 'pages/konfirmasi_user', as: 'konfirmasi_user'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
 
end
