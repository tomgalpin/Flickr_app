Flickr::Application.routes.draw do

  resources :albums do
    resource :photos do
    end
  end

  root :to => 'albums#index'

end
