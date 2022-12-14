Rails.application.routes.draw do
  resources :courses
  resources :students
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
resources :users
resources :articles
  # Defines the root path route ("/")
  # root "articles#index"
  root "welcome#home"
  get 'signup' , to: 'users#new'
  post 'users'  , to: 'users#create'

  get 'login' , to: 'sessions#new'
  post 'login' , to: 'sessions#create'

  get 'logout' , to: 'sessions#destroy'

  resources :categories
  # get 'articles/all/:id' , to: 'articles#all'
  # get 'articles/viewall'  , to: 'articles#viewall'
  # post 'articles' , to: 'articles#index'
  # get 'userdash' , to: 'article#new'
  # post 'articles' , to: 'articles#create'
end
