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