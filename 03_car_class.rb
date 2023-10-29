class Car
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

# Create some cars!
toyota = Car.new(2003, "matrix", "light blue")
toyota.speed_up(50)
toyota.current_speed
toyota.speed_up(50)
toyota.current_speed
toyota.brake(30)
toyota.current_speed
toyota.brake(70)
toyota.current_speed
toyota.shut_down
toyota.current_speed