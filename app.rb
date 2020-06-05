# frozen_string_literal: true

require 'sinatra/base'
require_relative './lib/diary_book.rb'

class Diary < Sinatra::Base
  get '/' do
    @entrys = DiaryBook.get
    erb :index
  end

  get '/add-entry' do
    erb :add_entry
  end

  post '/entry-added' do
    DiaryBook.add(params[:new_entry], params[:title])
    redirect '/'
  end

  run! if app_file == $PROGRAM_NAME
end
