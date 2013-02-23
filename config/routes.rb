Storeapp::Application.routes.draw do
  resources :items

  resources :cart_items, :only => [:index, :create, :destroy, :empty] do
    collection do
      post :empty
    end
  end

  root :to => 'items#index'
end
