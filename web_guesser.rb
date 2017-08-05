require 'sinatra'
require 'sinatra/reloader'

get '/' do
  "The secret number is #{rand(99)}"
end
