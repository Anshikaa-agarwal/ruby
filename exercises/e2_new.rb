# Ask user to enter text. Replace each vowel in the text with a '*' using regular expression. 
# Your program should accept a string as an argument and output the replaced string

class Array
  def regex_replace
    if ARGV.empty?
      print "Please provide an input"
      exit
    end

    ARGV.each do |str|
      puts str.gsub(/[aeiouAEIOU]/, "*")
    end
  end
end 

ARGV.regex_replace