Rails.application.routes.draw do
  resources :messages, only: [:index, :create, :destroy] do
    member do
      put :like
    end
  end
  root "messages#index"

end
