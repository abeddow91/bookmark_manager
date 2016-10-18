require 'sinatra/base'
require_relative './models/link'

class Bookmark_Manager < Sinatra::Base

# set :environment, :development

ENV["RACK_ENV"] ||= "development"

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

  post '/add_data' do
    Link.create(title: params[:link_title], url: params[:link_url]);
    redirect '/links'
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
