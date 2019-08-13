require './config/environment'
class ApplicatioController < Sinatra::Base

    configure do
       set :public_folder, 'public'
       set :views, 'app/views'
       #enable :sessions
       #set :session secret, "coolright"
    end

    get '/' do
        "Hello World!"
    end

end