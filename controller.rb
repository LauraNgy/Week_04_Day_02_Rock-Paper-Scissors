require ('sinatra')
require('sinatra/contrib/all')
require('pry-byebug')
require_relative('./models/game')
also_reload('./models/*')

get '/' do
  erb(:home)
end

get '/rules' do
  erb(:rules)
end

get '/play' do
  erb(:play)
end

get '/:option1/:option2' do
  game = Game.new(params[:option1], params[:option2])
  @winner = game.playgame()
  erb(:result)
end
