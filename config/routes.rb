TrapQueue::Application.routes.draw do
#  resources :locations # locations are related only to clients dhf 4/13/2011

  devise_for :users
  
  resources :users
   
  resources :clients do

    collection do
      get :search
    end

    resources :locations do
      resources :jobs
    end
  end
    
  root :to => "welcome#index"
end
