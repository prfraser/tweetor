Rails.application.routes.draw do
  devise_for :users, :controllers => { registrations: 'registrations', :omniauth_callbacks => "users/omniauth_callbacks" }
	root 'tweets#index'
  resources :tweets
  get '/users/:id', to: 'users#show'
  get '/:slug', to: 'users#index', as: 'user'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
