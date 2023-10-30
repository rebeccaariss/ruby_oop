# class Person
#   attr_reader :name
#   def initialize(name)
#     @name = name
#   end
# end

# bob = Person.new("Steve")
# bob.name= "Bob"

# The way the above code is written, "name" is read-only
# We can fix it by changing attr_reader to attr_accessor:

class Person
  attr_accessor :name
  def initialize(name)
    @name = name
  end

  def to_s
    "I am a Person object and my name is #{name}!"
  end
end

bob = Person.new("Steve")
puts bob # => "I am a Person object and my name is Steve!"
bob.name= "Bob"
puts bob # => "I am a Person object and my name is Bob!"