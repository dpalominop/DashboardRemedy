Rails.application.routes.draw do
  resources :employees
  resources :platforms
  devise_for :users, ActiveAdmin::Devise.config
  root to: "admin/dashboard#index"
  ActiveAdmin.routes(self)
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
