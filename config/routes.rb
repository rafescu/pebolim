Rails.application.routes.draw do
  post '/login', to: 'authentication#login'
  post '/signin', to: 'authentication#signin'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/game/index', to: 'games#index'
  get '/game/:id', to: 'games#show'
  post '/game', to: 'games#create'

  #----players----
  get '/users', to: 'players#index'
  get '/user/:userid/games', to: 'players#showGamesByUser'
  get '/user/:userid/game/:gameid', to: 'players#showGameByUser'
end
