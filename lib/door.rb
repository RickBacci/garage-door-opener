

require 'sinatra'
require 'wiringpi'
require './on_off'

#@gpio = WiringPi::GPIO.new

get '/' do

  "hello from #{`uname -a`}"
#  <a href='/toggle' class='btn'>open door</a>

#@gpio = WiringPi::GPIO.new
#@gpio.write(0,0)
#sleep 1
#@gpio.write.(0, 1)
#test
end
get '/toggle' do
  test
end











