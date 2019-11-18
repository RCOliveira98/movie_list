Rails.application.routes.draw do
  get 'movies/index'
  get 'movies/new'
  post 'movies/create'
  get 'movies/:id' => 'movies#show'

  get 'movies' => 'movies#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
