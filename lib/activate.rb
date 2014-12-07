require 'pi_piper'
include PiPiper

def activate
  pin = PiPiper::Pin.new(:pin => 17, :direction => :out, :invert => false)
  pin.off
  sleep 1
  pin.on
end
