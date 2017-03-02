require "./vehicularize.rb"
require "./bike.rb"
require "./car.rb"

bike = Actualize::Bike.new
puts bike.ring_bell
car = Actualize::Car.new
puts car.honk_horn