# Move the behaviour that isn't specific to the Car class to the Vehicle
# superclass:

class Vehicle
  attr_accessor :colour
  attr_reader :year

  def initialize(year, model, colour)
    @year = year
    @model = model
    @colour = colour
    @current_speed = 0
  end

  def to_s
    "I am a #{colour} #{@model} from the year #{year}! 🤓"
  end

  def self.gas_mileage(litres, kilometers) # class method: SELF refers to the
    # class itself at this level
    puts "#{kilometers / litres} kms per litre of gas"
  end

  def paint(colour)
    self.colour = colour # instance method: SELF refers to instance of the class
    puts "Your #{@model} is now #{colour}. Lovely!"
  end

  def current_speed
    puts "You are currently travelling at a speed of #{@current_speed} kmph"
  end

  def speed_up(kmph)
    @current_speed += kmph
    puts "You have accelerated by #{kmph} are currently moving at #{@current_speed} kmph."
  end

  def brake(kmph)
    @current_speed -= kmph
    puts "You have braked and decelerated by #{kmph} kmph"
  end

  def shut_down
    @current_speed = 0
    puts "Your vehicle is in park."
  end
end


class Truck < Vehicle
  NUMBER_OF_DOORS = 2
end


class Car < Vehicle
  NUMBER_OF_DOORS = 4
end

toyota = Car.new(2003, "matrix", "blue")
jeep = Truck.new(2000, "wrangler", "brown")
puts toyota
puts jeep
toyota.paint("orange")
jeep.paint("green")