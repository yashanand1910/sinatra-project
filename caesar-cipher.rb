require './cipher.rb'

require 'sinatra'
require 'sinatra/reloader' if development?

get '/' do
	erb :index
end
post '/' do
	@crypt = encrypt(params[:string].to_s, params[:index].to_i)
	erb :index
end