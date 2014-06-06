require 'sinatra/base'

class Server < Sinatra::Base
  configure do
    set :root, $APP_ROOT
  end

  # The homepage
  get '/' do
    erb :home
  end
end