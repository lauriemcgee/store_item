item1 = {:color => "red", :price => "5 bucks", :fragility => "is not", :worth_it? => "probably not"}
item2 = {:color => "blue", :price => "6 bucks", :fragility => "is", :worth_it? => "maybe"}
item3 = {:color => "white", :price => "2 bucks", :fragility => "is not", :worth_it? => "hell yeah it is"}



puts "Item numero uno is #{item1[:color]} colored, costs #{item1[:price]} and while it #{item1[:fragility]} fragile, it's also #{item1[:worth_it?]} worth it either."

class Store
  attr_reader :color, :price, :fragility, :worth_it
  attr_writer :worth_it
  def initialize(item_color, item_price, item_fragility, item_worth_it)
    @color = item_color
    @price = item_price
    @fragility = item_fragility
    @worth_it = item_worth_it
  end
  def info
    puts "This here #{@color} item is #{@price} and is #{@worth_it} worth it."
  end
end


# here, attr_writer writes the code def worth_it=(item_worth_it) // @worth_it = item_worth_it // end


item1 = Store.new("Red", "5 bucks", "is not", "probably not")
puts item1.color
puts item1.fragility
puts item1.info
item1.worth_it = "probably"
puts item1.worth_it

class Store
  attr_reader :color, :price, :fragility, :worth_it
  attr_writer :worth_it
  def initialize(item_input)
    @color = item_input[:color]
    @price = item_input[:price]
    @fragility = item_input[:fragility]
    @worth_it = item_input[:worth_it]
  end
  def info
    puts "This here #{@color} item is #{@price} and is #{@worth_it} worth it."
  end
end

item2 = Store.new({color: "Blue", price: "5 bucks", fragility: "nope", worth_it: "maybe"})
puts item2.info

# Class called food that inherits from Store class and has a shelf_life property

class Food < Store
  attr_reader :shelf_life
  def initialize(item_input)
    super
    @shelf_life = item_input[:shelf_life]
  end
end

food = Food.new({color: "Blue", price: "5 bucks", fragility: "nope", worth_it: "maybe", shelf_life: "not very long"})

p food.shelf_life





