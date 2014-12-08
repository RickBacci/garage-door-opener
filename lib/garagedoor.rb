require 'sinatra'

require 'wiringpi'
# require 'pi_piper'
# include PiPiper


class GarageDoor

  def initalize
    @activate_door_pin = WiringPi::GPIO.new
    @door_status_pin = WiringPi::GPIO.new

    # @pi_activate_door_pin = PiPiper::Pin.new(:pin => 17, :direction => :out, :invert => false)
    # @pi_door_status_pin = PiPiper::Pin.new(:pin => 7, :invert => false)
  end

  def check_status
    door_status = @door_status_pin.read(7)

    return "OPEN" if door_status == 1 
    "CLOSED"
  end

  def activate_door
    @activate_door_pin.write(0, 0)
    sleep 1
    @activate_door_pin.write(0, 1)

    # @pi_gpio.off
    # sleep 1
    # @pi_gpio.on
    "Door activated!"
  end
end

door = GarageDoor.new

get '/' do
  erb :index
  end

get '/activate' do
  erb :activate  
end



# def check_status
#   pin = PiPiper::Pin.new(:pin => 7)
#   pin.read
#  # return "#{pin.read}" if pin.read.to_i == 1
  
#    "#{pin.read.is_a? Integer}"
#    "#{pin.changed?}"
# end
