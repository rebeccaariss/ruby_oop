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
toyota.colour = "forest green"
puts toyota.colour
puts toyota.year
# toyota.year = 2005
# puts toyota.year
# ⬆️ Trying to update the year (read only) in this way will (and should) result
# in an undefined method error.