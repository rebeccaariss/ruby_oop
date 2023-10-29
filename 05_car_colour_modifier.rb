class Car
  # attr methods should be at the top of the class:
  attr_accessor :colour # << attr_accessor allows you to both get & set a given
  # instance variable
  attr_reader :year # << read only (cannot set the value of the instance variable)

  def initialize(year, model, colour)
    @year = year
    @model = model
    @colour = colour
    @current_speed = 0
  end

  def paint(colour)
    # the key here is not to forget the SELF keyword:
    self.colour = colour
    puts "Your #{@model} is now #{colour}. Lovely!"
  end

  def current_speed
    puts "You are currently travelling at a speed of #{@current_speed} kmph"
  end

  def speed_up(kmph) # because Canadian 🇨🇦🚗🤓
    @current_speed += kmph # don't forget to use += operator, not =
    puts "You have accelerated by #{kmph} are currently moving at #{@current_speed} kmph."
  end

  def brake(kmph)
    @current_speed -= kmph
    puts "You have braked and decelerated by #{kmph} kmph"
  end

  def shut_down
    @current_speed = 0
    puts "Your car is in park."
  end
end

toyota = Car.new(2003, "matrix", "light blue")

# we can now eliminate this sort of assignment for the updated OOP convention of
# passing an argument down through parentheses:

# toyota.colour = "forest green"

# instead:
toyota.paint("forest green")

puts toyota.colour
