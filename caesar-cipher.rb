require 'sinatra'
if development? require 'sinatra/reloader'

get '/' do
	erb :index
end