class Currency
  attr_reader :rupee, :paise

  def initialize(rupee, paise)
    @rupee = rupee
    @paise = paise
  end

  def total_amt
    (rupee + paise/100.0)
  end
end

c1 = Currency.new(10, 14)
puts c1.total_amt