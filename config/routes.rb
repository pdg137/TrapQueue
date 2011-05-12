TrapQueue::Application.routes.draw do
  resources :jobs do
    collection do
      get "archived"
    end
  end

  #  resources :locations # locations are related only to clients dhf 4/13/2011

  devise_for :users

  resources :users

  resources :clients do

    collection do
      get :search
    end

    resources :locations do
    end
  end


  root :to => "welcome#index"
end
