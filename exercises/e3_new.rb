# i want to create a class series where there would be diff kind of series
# input would be taken from command line - a number, upto which the series would be printed

# frozen_string_literal: true


class Integer
  def fibonacci(a,b)
    if ARGV.empty?
      print 'Please provide an input'
      exit
    end

    return if a>self

    yield a

    fibonacci(b, a + b) { |n| yield n}
  end
end

num = ARGV[0].to_i
num.fibonacci(1,1) { |a| print "#{a} " }