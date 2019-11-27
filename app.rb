require 'sinatra/base'
require './lib/bookmark'

class BookmarkApp < Sinatra::Base
  get '/' do
    erb :index
  end

  get '/bookmarks' do
    @bookmarks = Bookmark.all
    erb :bookmarks
  end
    # start the server if the ruby file executed directly
    run! if app_file == $0
end
