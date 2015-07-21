Rails.application.routes.draw do
  
  get '/tags', to: 'tags#index', as: 'tags'

  root 'articles#index'
  resources :articles do
  	resources :comments
  end
  resources :tags
  
end