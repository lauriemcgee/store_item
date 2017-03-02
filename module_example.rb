module Vehicularize
  def initialize
    @speed = 0
    @direction = 'north'
  end
  def brake
    @speed = 0
  end
  def accelerate
    @speed += 10
  end
  def turn(new_direction)
    @direction = new_direction
  end
end

class Car
  include Vehicularize
  def honk_horn
    puts "Beeeeeeep!"
  end
end

class Bike
  include Vehicularize
  def ring_bell
    puts "Ring ring!"
  end
end

bike1 = Bike.new 
puts bike1.accelerate
car = Car.new
puts car.honk_horn