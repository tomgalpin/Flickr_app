Flickr::Application.routes.draw do

  get "charges/new"

  get "charges/create"

  resources :password_resets

  get 'logout' => 'sessions#destroy', :as => 'logout'
  get 'login' => 'sessions#new', :as => 'login'
  get 'signup' => 'users#new', :as => 'signup'

  resources :charges

  resources :users do
    member do
      get :activate
    end
  end

  resources :sessions

  resources :albums do
    resource :photos do
    end
  end

  root :to => 'albums#index'

end
