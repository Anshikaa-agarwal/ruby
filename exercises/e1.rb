class StringMethods
  def initialize(str)
    @name = str
  end

  def countOccurance
    cnt = Hash.new(0)
    @name.each_char do |c|
      if c =~ /[A-Za-z]/
        cnt[c] += 1
      end
    end

    puts cnt
  end
end

if ARGV.empty?
  puts "Please provide an input"
else
  ARGV.each do |input_str|
    if input_str.strip.empty?
      puts "Please provide an input"
    else
      s1 = StringMethods.new(input_str)
      s1.countOccurance
    end
  end
end
