Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  constraints subdomain: "" do
    
    root 'home#index'

    resources :users, only: [:index], as: :show_users, path: 'admin'
    resources :users

    get 'signin', to: 'sessions#new', as: :new_session
    resources :sessions, only: [:create], as: :create_new_session, path: 'signin'

    get 'signup', to: 'users#new', as: :new_users
    resources :users, only: [:create], as: :create_new_user, path: 'signup'

    get 'signout', to: 'sessions#destroy', as: :destroy_session
    resources :sessions, only: [:destroy], as: :destroy_user_session, path: 'signout'
  end
end