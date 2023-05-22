Rails.application.routes.draw do
  get 'documentaryfilms/index'
  get 'documentaryfilms/new'
  get 'documentaryfilms/create'


  get 'movies/index'
  get 'movies/new'
  get 'movies/create'

  post 'movies' => 'movies#create'


  get 'series/index'
  get 'series/create'
  get 'series/new'

  post 'series' => 'series#create'



  get 'documentaryfilms/index'
  get 'movies/index'
  get 'series/index'

  post 'documentaryfilms' => 'documentaryfilms#create'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
