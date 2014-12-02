require 'sinatra'
require 'wiringpi'


# require_relative '/home/pi/garagedoor/lib/on_off'
# require_relative 'on_off'
require './on_off'

get '/' do
  erb :index
end

get '/open' do
  erb :open  
end
