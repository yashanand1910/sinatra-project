load 'cipher.rb'

require 'sinatra'
require 'sinatra/reloader' if development?

get '/' do
	string = params['string']
	erb :index, :local => { :string => string }
end