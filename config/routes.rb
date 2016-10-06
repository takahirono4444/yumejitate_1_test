Rails.application.routes.draw do
  
  
  devise_for :users
  root "products#index"

resources :finishs

 resources :products do
  
  resources :pictures
  collection do
    get 'search1'
      get 'search'
      get 'find'
 end
end
end
