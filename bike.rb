require "./vehicularize.rb"

module Actualize
  class Bike
    include Vehicularize
    def ring_bell
      puts "Ring ring!"
    end
  end
end