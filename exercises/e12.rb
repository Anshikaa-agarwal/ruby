#frozen_string_literal: true

# monkeypatching string to print count of lowercase, uppercase, digits, etc
class String
  UPPERCASE = 'A'..'Z'
  LOWERCASE = 'a'..'z'
  DIGIT = '0'..'9'
  
  private def count_cases
    lower = 0
    upper = 0
    digit = 0
    special = 0
    
    each_char do |char|
      case char
        when UPPERCASE
        upper += 1
        when LOWERCASE
        lower += 1
        when DIGIT
        digit += 1
        when ' '
        next
        else 
        special += 1
      end
    end
    
    [lower, upper, digit, special]
  end
  
  def print_cases
    lower, upper, digit, special = count_cases
    puts "Lowercase characters = #{lower}"
    puts "Uppercase characters = #{upper}"
    puts "Numeric characters = #{digit}"
    print "Special characters = #{special}"
  end
end

if ARGV.empty?
  print 'Please provide an input'
else
  input = ARGV[0]
  input.print_cases
end