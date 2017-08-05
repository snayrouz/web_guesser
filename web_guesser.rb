require 'sinatra'
require 'sinatra/reloader'

SECRET_NUMBER = rand(99)
number = SECRET_NUMBER

get '/' do
  guess = params["guess"].to_i
  message = check_guess(guess, number)
  erb :index, :locals => {message: message, number: number}
end

def check_guess(guess, number)
  if guess >= number
    "Too High!"
  elsif guess <= number
    "Too Low!"
  else
    "Great guess! The SECRET NUMBER is #{number}!"
  end
end
