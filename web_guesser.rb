require 'sinatra'
require 'sinatra/reloader'

get '/' do
  erb :index, :locals => {:number => rand(99)}
end
