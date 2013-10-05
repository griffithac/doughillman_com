DoughillmanCom::Application.routes.draw do

  root :to => 'static_pages#home'

  resources :static_pages

  resources :tags

end
