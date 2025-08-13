count = 0
def call_block
puts "Start of method"
if block_given? 
  yield
end
if block_given? 
  yield
end

puts "End of method"
end
call_block {puts "hello"}


# way2
class Wish
  def greet
    if block_given?
      yield("Anshika")
    else 
      puts "No user found"
    end
  end
end

w1 = Wish.new()
w1.greet {|user| puts "Good morning, #{user}"}

w2 = Wish.new()
w2.greet
    