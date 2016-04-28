require 'sinatra/base'
require './lib/game'
require './lib/player'

class Battle < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    player_1 = Player.new(params[:player_1_name])
    player_2 = Player.new(params[:player_2_name])
    @game = Game.create(player_1, player_2)
    redirect '/play'
  end

  before { @game = Game.instance }

  get '/play' do
    erb :play
  end

  get '/attack' do
    @game.attack(@game.opponent_of(@game.current_turn))
    erb :attack
  end

  post '/switch-turns' do
    Game.instance.switch_turns
    redirect '/loser' if Game.instance.game_over?
    redirect '/play'
  end

  get '/loser' do
    erb :loser
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
