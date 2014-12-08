Rails.application.routes.draw do
  root to: 'visitors#index'
  devise_for :users
#xok,1c3  resources :users
	scope "(:locale)", locale: /en|es/ do
		resources :users
	end
end
