ENV["RACK_ENV"] ||= "development"

require 'sinatra/base'
require_relative './models/data_mapper_setup'
require_relative './models/link'
require_relative './models/tag'
# require_relative './models/tagging'


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

  post '/add_data' do
    link = Link.create(title: params[:link_title], url: params[:link_url], )
    tag = Tag.create(tag_name: params[:link_tags], link_id: link.id )
    link.tags << tag
    link.save
    redirect '/links'
  end

  get '/links/search' do
    erb :search_link
  end

  get '/tags' do
    @tag_search = params[:tag_search]
    erb :search_results
    # redirect "/tags/#{params[:tag_search]}"
  end

  # get "/tags/#{params[:tag_search]}" do
  #   @tag_search = params[:tag_search]
  #   erb :search_result
  # end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
