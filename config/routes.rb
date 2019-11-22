Rails.application.routes.draw do
  resources :directors
  resources :actors
  resources :movies
  root to: 'movies#index'
  # efetua atualização
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
