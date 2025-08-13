class Student
  attr_reader :name, :age # ruby's inbuilt way of creating getters

  def initialize(name, age)
    @name = name
    @age = age
  end

  def name #it will override
    "#{@name} + hey"
  end

  def name=(new_name)
    @name =  new_name
  end
end

s1 = Student.new("Anshika", 20)
s1.name = "juedhuefveiuhd"
puts s1.name