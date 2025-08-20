triangular_numbers = Enumerator.new do |yielder|
number = 0
count = 1

number += count
count += 1
yielder.yield number

end
1.times { puts triangular_numbers.next }