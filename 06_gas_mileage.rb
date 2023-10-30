class Car
  attr_accessor :colour
  attr_reader :year

  def initialize(year, model, colour)
    @year = year
    @model = model
    @colour = colour
    @current_speed = 0
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
    puts "Your car is in park."
  end
end

toyota = Car.new(2003, "matrix", "light blue")
Car.gas_mileage(13, 351)
# toyota.gas_mileage(13, 351) # This would result in an undefined method error
# because gas_mileage is a class-level method (SELF within this scope refers to
# the Car class where it is defined)