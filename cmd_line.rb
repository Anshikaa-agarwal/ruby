class CmdLine

  def initialize(args)
    @args = args
  end

  def view
    puts @args.inspect
  end

  def iterate
    @args.each do |el|
      puts el
    end
  end

  def tamper
    @args.each do |el|
      print (el*2).class
    end
  end

end

c1 = CmdLine.new(ARGV)
c1.view
c1.iterate
c1.tamper