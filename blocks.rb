# Blocks and iterators in ruby

# Using OOPs
class BlocksIterators
  def initialize(arr1, arr2)
    @arr1 = arr1
    @arr2 = arr2
  end

  def eachMethod
    print "Multiplying (printing) by 2 using each: "
    @arr1.each do |el|
      print el*2
    end
    print "\n"
  end

  def collectMethod
    # returns new array with transformed elements / map does the same
    print "Updating arr2 (using collect): "
    @arr2 = @arr2.collect {|el| el*10}
    puts "#{@arr2}"
  end

  def findAll
    # returns array having required elements
    print "Finding all elements from arr2 which are >35: "
    @arr3 = @arr2.find_all { |el| el>35} 
    puts "#{@arr3}"
  end

  def times_method
    # runs upto specific time
    print "Prinitng 10 times using times method: "
    10.times {|i| print "#{i} "}
    print "\n"
  end

  def up
    # counts upto the assigned number
    print "Print from 4 to 9: "
    4.upto(9) {|el| print "#{el} "}
    print "\n"
  end

  def down
    # counts down to given number
    print "Print from 10 to 3: "
    10.downto(3) {|el| print "#{el} "}
    print "\n"
  end

  def display
    puts "Array 1: #{@arr1}"
    puts "Array 2: #{@arr2}"
  end
end

b1 = BlocksIterators.new([1,2,3], [3,5,7])
b1.eachMethod
b1.collectMethod
b1.findAll
b1.times_method
b1.up
b1.down