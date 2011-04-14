TrapQueue::Application.routes.draw do
#  resources :locations # locations are related only to clients dhf 4/13/2011

  devise_for :users
  
  resources :users
   
  resources :clients do
    resources :jobs
    resources :locations
  end
    
  root :to => "welcome#index"
end
