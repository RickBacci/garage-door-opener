require 'sinatra'
require 'wiringpi'
require 'pi_piper'
include PiPiper

# require_relative '/home/pi/garagedoor/lib/on_off'
# require_relative 'on_off'
require './on_off'
require './blink'

get '/' do
  erb :index
end

get '/open' do
  erb :open  
end
