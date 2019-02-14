Rails.application.routes.draw do
  devise_for :users
  root to: 'events#index'

  resources :events, only: [:index, :show] do
    resources :quotations, only: [:new, :create]

    collection do                       # collection => no restaurant id in URL
      get 'traiteurs'                         # RestaurantsController#top
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
