Flickr::Application.routes.draw do

  get 'logout' => 'sessions#destroy', :as => 'logout'
  get 'login' => 'sessions#new', :as => 'login'
  get 'signup' => 'users#new', :as => 'signup'

  resources :users
  resources :sessions

  resources :albums do
    resource :photos do
    end
  end

  root :to => 'albums#index'

end
