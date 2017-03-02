require "./vehicularize.rb"

class Bike
  include Vehicularize
  def ring_bell
    puts "Ring ring!"
  end
end