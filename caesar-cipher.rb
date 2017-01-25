require './cipher.rb'

require 'sinatra'
require 'sinatra/reloader' if development?

get '/' do
	erb :index
end
post '/' do
	@crypt = encrypt(params[:string], params[:index])
	erb :index
end