require 'sinatra/base'
require './lib/game.rb'
require './lib/player.rb'
require './lib/computer.rb'

class RPS < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    @player = Player.new(params[:player_1_name])
    @computer = Computer.new
    @game = Game.create(@computer, @player)
    redirect '/play'
  end

  before do
    @game = Game.instance
  end

  get '/play' do
    erb :play
  end

  post '/choice' do
    @game.player.choose(params[:player_choice])
    @game.computer.make_random_choice
    @game.add_computer_selection(@game.computer)
    @game.add_player_selection(@game.player)
    @game.end_game
    redirect '/result'
  end

  get '/result' do
    erb :result
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
