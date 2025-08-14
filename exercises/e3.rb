# frozen_string_literal: true

# Generates series, here fibonacci
class Series
  def initialize
    @num = ARGV[0].to_i
    @fib = []
  end

  def validate_inp
    if ARGV.empty?
      print 'Please provide an input'
      exit
    end
  end
  
  def calc
    @fib[0] = 1
    @fib[1] = 1
    i = 2

    while true
      nextt = @fib[i - 2] + @fib[i - 1]
      if nextt > @num
        break
      end

      @fib[i] = nextt
      i += 1
    end
  end 
  
  def fibonacci
    validate_inp
    calc
    @fib.each do |el|
      print "#{el} "
    end
  end
end

s1 = Series.new
s1.fibonacci