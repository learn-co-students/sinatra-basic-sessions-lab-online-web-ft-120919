require_relative 'config/environment'
require 'pry'

class App < Sinatra::Base
   configure do
    enable :sessions
    set :session_secret, "killamanjaro"      
   end 
    get '/' do
        # binding.pry
        erb :index
    end

    post '/checkout' do
        session[:item] = params[:item]
        # binding.pry
    end
end