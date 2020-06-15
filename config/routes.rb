Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
	root 'movies#index'
	resources :questions, only: [:index, :show, :create] do
  resources :solutions, only: [:index, :create]
  end
	resources :aws_texts, only: [:index, :show]
end
