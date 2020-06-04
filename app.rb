require 'sinatra/base'

class Diary < Sinatra::Base 

  get '/' do
    'My Diary'
  end

  run! if app_file == $0

end