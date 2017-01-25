require 'sinatra'
require 'sinatra/reloader' if development?

require 'cipher.rb'


get '/' do
	string = params['string']
	erb :index, :local { :string => string }
end