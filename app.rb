require 'sinatra/base'
require_relative './lib/player'

class Battle < Sinatra::Base
  enable :sessions
  # get '/' do
  #   'Testing infrastructure working'
  # end

  get '/' do
    erb :index
  end

  post '/names' do
    $player1 = Player.new(params[:player1_name])
    $player2 = Player.new(params[:player2_name])
    redirect '/play'
  end
    #redirecting the user after they post to /names

  # refactored a POST request that renders a view(previously erb :play) to use a POST-redirect loop
  get '/play' do
    @player1 = $player1
    @player2 = $player2
    erb :play
  end

  # GET request with the /attack path because we're not changing the state of the program
  get '/attack' do
    @player1 = $player1
    @player2 = $player2
    @player1.attack(@player2)
    erb :attack
  end

  run! if app_file == $0
end