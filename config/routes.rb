Rails.application.routes.draw do

  get 'pages/about'

  get 'pages/requirement'

  devise_for :users
	resources :posts do
		resources :comments
	end

	root "posts#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
