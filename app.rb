require_relative 'config/environment'

class App < Sinatra::Base
  configure do
    enable :sessions
    set :session_secret, "Numa"
  end

  get '/' do
    @session = session
    erb :index
  end


  post '/checkout' do
    item = params[:item]
    session[:item]= item
    @session = session
    #binding.pry
    erb :show
  end

end