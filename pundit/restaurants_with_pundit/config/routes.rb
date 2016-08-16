Rails.application.routes.draw do
  scope '(:locale)', locale: /pt/ do
    resources :restaurants
    root to: 'pages#home'
  end

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
