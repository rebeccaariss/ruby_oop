class Student
  def initialize(name, grade)
    @name = name
    @grade = grade
  end

  def better_grade_than?(classmate)
    grade > classmate.grade
  end

  protected # when you want methods to be accessible between instances of a class

  def grade
    @grade
  end
end

fitz = Student.new("Fitz", 99)
simmons = Student.new("Simmons", 100)

puts fitz.better_grade_than?(simmons)
puts "What. The. Hell! \n (In Scottish 🏴󠁧󠁢󠁳󠁣󠁴󠁿)"