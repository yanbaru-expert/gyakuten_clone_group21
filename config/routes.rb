Rails.application.routes.draw do
  devise_for :users
	root 'movies#index'
	resources :aws_texts, only: [:index, :show]
end
