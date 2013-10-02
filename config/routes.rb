DoughillmanCom::Application.routes.draw do

  root :to => 'users#index' # **This will change later. controller must be lower case due to "\A[a-z_0-9\/]*\z/" in rails.**

  resources :tags

  resources :users

end
