TrapQueue::Application.routes.draw do
  get "jobs/index"

  get "jobs/show"

  get "jobs/new"

  get "jobs/create"

  get "jobs/edit"

  get "jobs/destroy"

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

  resources :jobs

  root :to => "welcome#index"
end

