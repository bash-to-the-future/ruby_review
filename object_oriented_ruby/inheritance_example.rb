class Vehicle
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

class Car < Vehicle
  def initialize(input_make, input_model, input_year, input_fuel)
    super()
    @make = input_make
    @model = input_model
    @year = input_year
    @fuel = input_fuel
  end

  def honk_horn
    puts "Beeeeeeep!"
  end
end

class Bike < Vehicle
  def initialize(input_options)
    super()
    @type = input_options[:type]
    @weight = input_options[:weight]
    @color = input_options[:color]
  end

  def ring_bell
    puts "Ring ring!"
  end
end

car = Car.new("Mini", "Cooper Hardtop", 2019, 10)
bike = Bike.new(type: "Mountain", weight: 27, color: "green")

p car
p bike
