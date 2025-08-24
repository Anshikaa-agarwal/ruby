# frozen_string_literal: true

require 'prime'

# added a function to find and print prime numbers till n
class Integer
  def prime_till_n
    if self == 1 
      []
    else
      arr = [2]
      (3..self).step(2) {|x| arr << x if x.prime?}
      arr
    end
  end
end

if ARGV.empty?
  print 'Please provide an input'
else
  input = ARGV[0].to_i
  p input.prime_till_n
end