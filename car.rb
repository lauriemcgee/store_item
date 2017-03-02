require "./vehicularize.rb"

module Actualize
  class Car
    include Vehicularize
    def honk_horn
      puts "Beeeeeeep!"
    end
  end
end