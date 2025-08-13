# i want to create a class series where there would be diff kind of series
# input would be taken from command line - a number, upto which the series would be printed

class Series
  def initialize
    @num = ARGV[0].to_i
    @arr = ARGV.map {|el| el.to_i}
    @fib = []
  end

  # prints all even number til ARGV
  def even_series
    i=1
    print "Printing all even numbers till: #{@num}: "
    while i<=@num
      if i%2==0
        print "#{i} "
      end
      i+=1
    end
    print "\n"
  end 
  
  # prints all odd numbers till ARGV
  def odd_series
    i=1
    print "Printing all odd numbers till: #{@num}: "
    while i<=@num
      if(i%2 != 0)
        print "#{i} "
      end
      i+=1
    end
    print "\n"
  end

  # print fibonacci 
  def fibonacci
    @fib[0] = 1
    @fib[1] = 1
    i=2

    while true
      @next = @fib[i-1] + @fib[i-2]
      if @next > @num
        break
      end
      @fib[i] = @next
      i+=1
    end

    print @fib
  end

  def fib_yield(a, b)
    return if b > @num
    yield a

    fib_yield(b, a+b) { |n| yield n }
  end

end

s1 = Series.new
# s1.even_series
# s1.odd_series
# s1.fibonacci 
s1.fib_yield(1,1) {|a| print "#{a} "}