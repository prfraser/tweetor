Rails.application.routes.draw do
  devise_for :users, :controllers => { registrations: 'registrations', :omniauth_callbacks => "users/omniauth_callbacks" }
	root 'tweets#index'
  resources :tweets
  get 'users/index'
  get '/:slug', to: 'users#show', as: 'user'
  match :follow, to: 'follows#create', as: :follow, via: :post
  match :unfollow, to: 'follows#destroy', as: :unfollow, via: :post
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
