require './cipher.rb'

require 'sinatra'
require 'sinatra/reloader' if development?

get '/' do
	erb :index
end
post '/' do
	string = params['string']
	crypt = encrypt(string)
	erb :result, :local => { :string => string, :crypt => crypt }
end