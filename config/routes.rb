Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

 # get '/users/restore', :to => 'welcomes#index'

 devise_for :users, :controllers => { registrations: 'my_registrations' }

 devise_scope :user do
 	# get '/users/restore', action: :restore, controller: 'my_registrations'
 	   get '/users/restore', :to => 'my_registrations#restore'
 end


 resources :products

 root 'welcomes#index'
end
