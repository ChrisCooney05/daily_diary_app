# frozen_string_literal: true

require 'sinatra/base'

class Diary < Sinatra::Base
  get '/' do
    erb :index
  end

  get '/add-entry' do
    erb :add_entry
  end

  post '/entry-added' do
    erb :entry_added
  end

  run! if app_file == $PROGRAM_NAME
end
