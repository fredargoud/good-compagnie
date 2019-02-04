Rails.application.routes.draw do
  devise_for :users
  root to: 'events#index'

  resources :events, only: [:index, :show] do
    resources :quotations, only: [:new, :create]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
