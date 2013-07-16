Flickr::Application.routes.draw do

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

  resources :comments

  root :to => 'albums#index'

end
