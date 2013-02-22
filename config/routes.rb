Storeapp::Application.routes.draw do
  resources :items

  resources :cart_items, :only => [:index, :create]

  root :to => 'items#index'
end
