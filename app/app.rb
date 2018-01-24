ENV['RACK_ENV'] ||= 'development'

require 'sinatra/base'
require './app/datamapper_setup'

class BookmarkManager < Sinatra::Base
  get '/links' do
    @links = Link.all
    erb :index
  end

  post '/links' do
    link = Link.new(url: params[:new_link], title: params[:title])
    tag = Tag.first_or_create(name: params[:tag])
    link.tags << tag
    link.save
    redirect to ('/links')
  end

  get '/links/new' do
    erb :new
  end

end
