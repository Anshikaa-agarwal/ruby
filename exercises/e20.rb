# frozen_string_literal: true

# class Interest
class Interest
  attr_accessor :p, :t, :r

  def initialize
    yield self
    @r = 10.0
  end

  def simple_interest_amt
    p + (p * r * t)/100
  end

  def compound_interest_amt
    p * (1+(r/100)) ** t
  end
  
  def difference
    simple_interest_amt - compound_interest_amt
  end
end

if ARGV.empty?
  puts 'Please provide an input'
else
  interest = Interest.new do |i|
    i.p = ARGV[0].to_f
    i.t = ARGV[1].to_f
  end

  puts "Interest difference= #{interest.difference.round(2)}"
end