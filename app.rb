require 'sinatra/base'
require 'sinatra/flash'
require './lib/chitter'

class ChitterClallenge < Sinatra::Base
    
    get '/' do
        erb :'index'
    end

    get '/chitter' do
        erb :'chitter'
    end

    run! if app_file == $PROGRAM_NAME

end