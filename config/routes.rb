TrapQueue::Application.routes.draw do
  resources :locations

  devise_for :users
  
  resources :users
    
  root :to => "welcome#index"
end
