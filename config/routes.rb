Rottenpotatoes::Application.routes.draw do

  root :to => 'movies#index'

  resources :movies do
    get 'similar', :on => :member
  end

end