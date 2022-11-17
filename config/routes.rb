Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  get 'megabox/ticket'
  get 'megabox/show/:id' => "megabox#show"
  get 'megabox/movie'
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

	root :to => "megabox#index"
	
	
	
end
