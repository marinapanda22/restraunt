Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  devise_for :users
  ActiveAdmin.routes(self)
  resources :dish_in_baskets, :baskets, :categories
  root 'list#main'
  get 'list_one/:id' => 'list#one', as: 'list_one'
  get 'list_category/:id' => 'list#category', as: 'list_category'
  # scope :admin do
  # 	resources :dishes, :caves 
  # end
  scope :list_one do
  	resources :dish_in_baskets, only: [:create, :destroy] 
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
