Rails.application.routes.draw do

  root to: 'movies#index'

  get 'movies/index'    # recuperar todos os filmes
  get 'movies/new'      # redireciona para o cadastro de um novo filme
  post 'movies/create'  # evetua um novo cadastaro
  get 'movies/:id' => 'movies#show' # recupera um filme específico

  get 'movies' => 'movies#index' # alias
  get 'movies/edit/:id' => 'movies#edit' # redireciona para página de edição
  put 'movies/:id' => 'movies#update'     # efetua atualização
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
