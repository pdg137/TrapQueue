TrapQueue::Application.routes.draw do
  resources :locations

  devise_for :users
  
  resources :users
   
  resources :clients
    
  root :to => "welcome#index"
end
