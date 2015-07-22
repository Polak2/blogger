Rails.application.routes.draw do
  
  get '/tags', to: 'tags#index', as: 'tags'

  root 'articles#index'
  resources :articles do
  	resources :comments
  end
  resources :tags
  resources :authors
  resources :author_sessions, only: [ :new, :create, :destroy ]

  get 'login'  => 'author_sessions#new'
  get 'logout' => 'author_sessions#destroy'

end