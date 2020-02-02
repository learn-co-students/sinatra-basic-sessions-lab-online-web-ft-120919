require_relative 'config/environment'

configure do
    enable :sessions
    set :session_secret, "12379-74257adgfghkhfgfsfsecret70987756745346578ljkghjfhgdrtechf"
end

class App < Sinatra::Base

    get '/' do 
        erb :index
    end

    post '/checkout' do
        session[:item] = params[:item]
        @session = session
        erb :checkout
    end
end