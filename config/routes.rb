TrapQueue::Application.routes.draw do
  resources :jobs do
    collection do
      get ":status", :action => "index", :as => "with_status"
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

  root :to => "welcome#index"
end
