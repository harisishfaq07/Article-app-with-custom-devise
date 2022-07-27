Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
resources :users
resources :articles
  # Defines the root path route ("/")
  # root "articles#index"
  root "welcome#home"
  get 'signup' , to: 'users#new'
  post 'users'  , to: 'users#create'

  # get 'articles/all/:id' , to: 'articles#all'
  # get 'articles/viewall'  , to: 'articles#viewall'
  # post 'articles' , to: 'articles#index'
  # get 'userdash' , to: 'article#new'
  # post 'articles' , to: 'articles#create'
end
