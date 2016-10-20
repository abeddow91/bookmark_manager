ENV["RACK_ENV"] ||= "development"

require 'sinatra/base'
require_relative './models/data_mapper_setup'
require_relative './models/link'
require_relative './models/tag'


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
    link = Link.new(title: params[:link_title], url: params[:link_url])
    tags = params[:link_tags].split(' ')
    tags.each do |single_tag|
      tag = Tag.first_or_create(tag_name: single_tag)
      link.tags << tag
      link.save
    end
    redirect '/links'
  end

  get '/tags/:tag_search' do
    @tag_search = params[:tag_search]
    tag = Tag.first(tag_name: @tag_search)

    @saved_links = tag.links
    erb :links
  end


  # start the server if ruby file executed directly
  run! if app_file == $0
end
