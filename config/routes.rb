Rails.application.routes.draw do
  devise_for :users
	root 'movies#index'
	get '/aws', to: 'aws_texts#index'
end
