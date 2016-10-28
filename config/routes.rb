Rails.application.routes.draw do
  
  
  devise_for :users
  root "products#index"

  resources :finishs do
  collection do
    get 'search1'
      get 'search'
      get 'find'
      get 'find2'
      get 'find3'
      get 'find4'
      get 'find5'
      get 'find6'
      get 'find7'
      get 'find8'
      get 'index2'

end
end


  resources :pictures



 resources :products do
  
    
  collection do
    get 'search1'
      get 'search'
      get 'find'
      get 'find2'
      get 'find3'
      get 'find4'
      get 'find5'
      get 'find6'
      get 'find7'
      get 'find8'
end
end
end

