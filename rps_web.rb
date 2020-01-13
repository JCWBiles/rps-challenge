require 'sinatra/base'

class RPSWeb < Sinatra::Base
  enable :sessions
  
  get '/' do
    erb :index
  end

  post '/names' do
    session['player_1'] = params[:player_1]
    redirect '/play'
  end

  get '/play' do
    @player_1 = session['player_1']
    erb :play
  end

  run! if app_file == $0
end
