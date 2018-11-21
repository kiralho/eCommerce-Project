Rails.application.routes.draw do
  get 'page/show'
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  resources :page, only: [:show]
  resources :category, only: [:index, :show]
  resources :product, only: [:index, :show] do
    member do
      post :add_to_cart
      post :change_item_quantity
      post :remove_item_from_cart
    end

    collection do
      post :clear_cart
    end
  end

  resources :search, only: [:index] do
    collection do
       get 'results'
    end
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'product#index'
end
