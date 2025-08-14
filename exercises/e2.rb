# Ask user to enter text. Replace each vowel in the text with a '*' using regular expression. 
# Your program should accept a string as an argument and output the replaced string

class Regex
  def initialize(name)
    @name = name
  end

  def replace
    puts @name.gsub(/[aeiou]/, "*")
  end
end

if ARGV.empty?
  puts "Please provide an input"
else 
  ARGV.each do |str|
    r = Regex.new(str)
    r.replace
  end
end