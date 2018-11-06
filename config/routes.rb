Rails.application.routes.draw do
  get 'page/show'
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  resources :page, only: [:show]
  resources :category, only: [:index, :show]
  resources :product, only: [:index, :show]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'product#index'
end
