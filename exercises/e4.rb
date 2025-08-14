# frozen_string_literal: true

class String
  def self.palindrome(str)
    i = 0
    j = str.size - 1

    while i<=j
      if(str[i] != str[j])
        return false
      end
      i+=1
      j-=1
    end

    return true
  end

  def self.isPalindrome(str)
    output = palindrome(str)

    if(output) 
      print 'Input string is a palindrome'
    else
      print 'Input string is not a palindrome'
    end
  end
end


if ARGV.empty?
  print 'Please provide an input'
else
  str = ARGV[0]
  String.isPalindrome(str)
end