# frozen_string_literal: true

#
class String
  def swap_words(word1, word2)
    temp = word1.dup
    word1 = word2.dup
    word2 = temp
    [word1, word2]
  end
    
  def reverse_word_order
    arr = split(" ").to_a
    n = arr.size
    i = 0
    while i<n/2
      arr[i], arr[n-i-1] = swap_words(arr[i], arr[n-i-1])
      i += 1
    end
    
    str = arr.join(" ")
    print str
  end
end

if ARGV.empty?
  print 'Please provide an input'
else
  input = ARGV[0]
  input.reverse_word_order
end 