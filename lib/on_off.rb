# require 'wiringpi'

def press_button
  @gpio = WiringPi::GPIO.new

  @gpio.write(0, 0)
  sleep 1
  @gpio.write(0, 1)
end

def check_status
  @gpio = WiringPi::GPIO.new
  status = @gpio.read(7)

  return "OPEN" if status == 1 
  "CLOSED"
end


# press_button
# check_status





























