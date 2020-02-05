require_relative 'config/environment'

class App < Sinatra::Base
    configure do
        enable :sessions unless test?
        set :session_secret, "secret"
    end

    get '/' do
        erb :index
    end

    post '/checkout' do
        session[:item] = params[:item]
        @session_item = session[:item]
        "#{@session_item}"
    end
end