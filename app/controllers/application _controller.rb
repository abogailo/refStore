require './config/environment'
class ApplicationController < Sinatra::Base

    configure do
       set :public_folder, 'public'
       set :views, 'app/views'
       #enable :sessions
       #set :session secret, "coolright"
    end

    get '/' do
        "Heller PING"
    end

end