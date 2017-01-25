require 'sinatra'
if development? require 'sinatra/reloader'

get '/' do
	'Hello, World!'
end