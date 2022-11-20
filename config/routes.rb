Rails.application.routes.draw do
	root :to => "megabox#index"

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
	
  resources :movies, only: [:index, :show]
  
  resources :screens, only: [:index]
	
  resources :ticketings, only: [:create, :index]
	
	
  
  devise_for :users
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

	
	
	
	
end
