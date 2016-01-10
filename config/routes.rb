Rails.application.routes.draw do
  get 'sessions/login'
  get 'sessions/logout'
	post 'sessions' => 'sessions#create'
	root 'posts#index'
	resources :posts
	get 'registration' => 'users#new', as: 'registration'
	post 'users' => 'users#create'
end
