Rails.application.routes.draw do
  devise_for :users
  resources :recuriements
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
     #get 'home/index'
       get 'home/about'
     root to: "home#index"

  # Defines the root path route ("/")
  # root "articles#index"
end
