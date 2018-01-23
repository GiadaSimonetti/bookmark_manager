ENV['RACK_ENV'] ||= 'development'

require 'sinatra/base'
require './app/models/link'

class BookmarkManager < Sinatra::Base
  get '/links' do
    @links = Link.all
    erb :index
  end

  post '/links' do
    Link.create(url: params[:new_link])
    redirect to ('/links')
  end

  get '/links/new' do
    erb :new
  end

end
