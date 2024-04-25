Rails.application.routes.draw do
  
  root "products#index"                          #main page is products page.
  resources :products
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
