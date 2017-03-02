require "./vehicularize.rb"

class Car
  include Vehicularize
  def honk_horn
    puts "Beeeeeeep!"
  end
end