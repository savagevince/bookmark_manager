# frozen_string_literal: true

require 'sinatra/base'
require './lib/bookmark'

class BookmarkApp < Sinatra::Base
  get '/' do
    erb :index
  end

  get '/bookmarks' do
    p ENV
    @bookmarks = Bookmark.all
    erb :bookmarks
  end

  get '/bookmarks/new' do
    erb :'bookmarks/new'
  end

  post '/bookmarks' do
    Bookmark.create(url: params[:url])
    redirect '/bookmarks'
  end
  # start the server if the ruby file executed directly
  run! if app_file == $PROGRAM_NAME
end
