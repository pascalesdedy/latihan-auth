Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
	#USERS ROUTES
	post 'users/signin' => 'user_token#create'
	post 'users/signup', to: 'users#create'
	get 'users', to: 'users#index'
	get 'users/:id', to: 'users#show'
	#put 'user/edit', to: 'users#update'
	delete 'user/del', to: 'users#destroy'


end
