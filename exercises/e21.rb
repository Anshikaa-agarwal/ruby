# frozen_string_literal: true

# class Integer
class Integer
  def factorial
    raise ArgumentError, "Negative number entered" if self < 0
    return 1 if self == 0 || self == 1
    fact = 1
    (1..self).reduce {|fact, num| fact *= num}
  rescue => e
    puts e.message
  end
end

if ARGV.empty?
  puts 'Please provide an input'
else
  puts ARGV[0].to_i.factorial
end