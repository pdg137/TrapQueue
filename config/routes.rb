TrapQueue::Application.routes.draw do
  resources :jobs do
    collection do
      get "state/:state", :action => "index", :as => "with_state"
      # get :graphs
    end
  end

  devise_for :users

  resources :users

  resources :clients do
    collection do
      get :search
    end

    resources :locations do
    end
  end

  root :to => "dashboard#index"
end
