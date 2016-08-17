Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/super_secret_super_admin', as: 'rails_admin'
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
