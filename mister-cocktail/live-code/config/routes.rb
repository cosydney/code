Rails.application.routes.draw do

  resources :cocktails
  resources :cocktails
  resources :cocktails do
    resources :doses, only: [:create, :new]
  end

  resources :doses, only: :destroy

  root 'cocktails#index'
end
