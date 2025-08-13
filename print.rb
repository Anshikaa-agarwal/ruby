# Prinintg methods in ruby
class PrintCases
  def initialize(name, age)
    @name = name
    @age = age
  end

  def printP
    p self
  end

  def printPuts
    puts self
  end

  def printPrint
    print self
  end
end

obj1 = PrintCases.new("Anshika", 20)

# puts is human-friendly, converts argument to string(to_s) and adds new line
obj1.printPuts

# p is developer friendly, prints raw, insepectable form (using inspect)
obj1.printP

# print and puts call to_s method by default on objects, if we wish to change the way they look, we may override to_s
obj1.printPrint

class PrintModified
  def initialize(name, age)
    @name = name
    @age = age
  end

  def to_s
    "Name: #{@name}, Age: #{@age} \n"
  end
end

obj2 = PrintModified.new("Anshika", 20)
print obj2
puts obj2
p obj2