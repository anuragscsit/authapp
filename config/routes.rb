Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  get 'home/index'
  root 'home#index'
  match 'auth/:provider/callback', to: 'sessions#create',via: [:get, :post]
  match 'auth/failure', to: redirect('/'),via: [:get, :post]
  match 'signout', to: 'sessions#destroy', as: 'signout',via: [:get, :post]

	resources :univercities do 
	  resources :colleges,:only => [:show]
	end
  
end
