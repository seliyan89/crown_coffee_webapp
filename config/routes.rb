Rails.application.routes.draw do
  devise_for :users, :controllers => { registrations: 'my_registrations' }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :products
  resources :orders

  root 'welcomes#index'
end
