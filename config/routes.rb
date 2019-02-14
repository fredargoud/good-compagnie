Rails.application.routes.draw do
  devise_for :users
  root to: 'events#index'

  resources :events, only: [:index, :show] do
    resources :quotations, only: [:new, :create]

    collection do
      get 'traiteurs'
    end

    collection do
      get 'animations'
    end

    collection do
      get 'team_building'
    end

    collection do
      get 'soiree_dentreprise'
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
