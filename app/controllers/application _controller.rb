require './config/environment'
require 'rack-flash'
require "sinatra"
require "active_record"
require "sinatra/activerecord"

class ApplicationController < Sinatra::Base
 #sinatra base gives the app a Rack compatible interface that can be used with the sinatra framerwork.

    use Rack::Flash

    configure do
       set :public_folder, 'public'
       set :views, 'app/views'
       enable :sessions
       set :session_secret, "coolright"
    end

    get '/' do
    if logged_in?
          go_to_groups
       else
       erb :index
       end
    end

    helpers do
        def logged_in?
          !!session[:user_id]
        end

        def current_user
          @current_user ||= User.find(session[:user_id])
        end

        def go_to_home
          erb :'index'
        end

        def go_to_groups
          erb :'groups/groups'
        end

        def go_to_contributions
          erb :'contributions/contributions'
        end

      end
end
