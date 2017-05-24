Rails.application.routes.draw do
  resources :products, only: [:new,:create] do
  	member do
  		get 'category_product'
  	end
  	collection do
  		post 'create_product'
  	end
  end


  resources :categories
  get 'welcome/index'
  root 'categories#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
