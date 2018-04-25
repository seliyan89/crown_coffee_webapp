Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
 devise_for :users, :controllers => { registrations: 'my_registrations' }

 devise_scope :user do
 	   get '/users/restore', :to => 'my_registrations#restore'
 end

 resources :products
 resources :orders

  root 'welcomes#index'

  resources :products
  resources :orders
  resources :comments

  get 'location' => 'pages#location'
end
