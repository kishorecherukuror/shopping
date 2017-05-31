Rails.application.routes.draw do
  namespace :hospital do
    resources :physicians, only: [:new,:create,:index]
    resources :patients, only: [:new,:create,:index]
    resources :appointments, only: [:new,:create,:index]
  end

  resources :locations, only: [:new,:create]
  resources :products, only: [:new,:create, :edit ] do
  	member do
  		get 'new_category_product'
  	end
  	collection do
  		post 'create_product'
  	end
  end


  resources :categories do
    member do
      get 'products_list', controller: :products
    end
  end
  get 'welcome/index'
  root 'categories#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
