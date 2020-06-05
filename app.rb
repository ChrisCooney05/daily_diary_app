# frozen_string_literal: true

require 'sinatra/base'
require_relative './lib/diary_book.rb'

class Diary < Sinatra::Base
  get '/' do
    erb :index
  end

  get '/add-entry' do
    erb :add_entry
  end

  post '/entry-added' do
    p params
    DiaryBook.add(params[:new_entry])
    erb :entry_added
  end

  run! if app_file == $PROGRAM_NAME
end
