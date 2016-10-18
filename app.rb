require 'sinatra/base'
require_relative './models/link'

class Bookmark_Manager < Sinatra::Base
  get '/' do
    erb :frontpage
  end

  get '/links' do
    @saved_links = Link.all
    erb :links
  end

  get '/links/new' do
    erb :add_link
  end

  get






  # start the server if ruby file executed directly
  run! if app_file == $0
end
