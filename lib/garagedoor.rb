require 'sinatra'
require 'wiringpi'
require 'pi_piper'
include PiPiper

require './on_off'
require './activate_door'

get '/' do
  erb :index
end

get '/open' do
  erb :open  
end
