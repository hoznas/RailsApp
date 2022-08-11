Rails.application.routes.draw do
  get 'cards/index'
  get 'cards/show'
  get 'cards/add'
  get 'cards/edit'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"


  get 'hello/index'
  get 'hello', to: 'hello#index'
  get 'hello/other'
  post 'hello', to: 'hello#index'
  post 'hello/index'


  get 'people/index'
  get 'people', to:'people#index'
  get 'people/add'
  post 'people/add', to:'people#create'

  patch 'people/edit/:id', to:'people#update'
  get 'people/edit/:id', to:'people#edit'
  post 'people/edit/:id', to:'people#update'

  get 'people/delete/:id', to:'people#delete'
  
  get 'people/:id', to:'people#show'
  
  get 'msgboard', to:'msgboard#index'
  post 'msgboard', to:'msgboard#index'
  get 'msgboard/index'
  post 'msgboard/index'

  get 'cards/index'
  get 'cards',to:'cards#index'


  get 'cards/add'
  post 'cards/add'

  get 'cards/:id', to:'cards#show'

  get 'cards/edit/:id', to:'cards#edit'
  patch 'cards/edit/:id', to:'cards#edit'
  
  get 'cards/delete/:id', to:'cards#delete'
end
