Rails.application.routes.draw do
  resources :quotes
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  get '/api/quotes', to: 'api/quotes#search'
  get '/api/quotes/first3', to: 'api/quotes#first3'
  

  namespace :api do #points to api folder in controllers
    resources :quotes
  end

  


end
