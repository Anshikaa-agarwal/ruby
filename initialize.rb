# checking if initialize can be overloaded
class College
  def initialize(name)
    @name = name
  end
  def initialize(name, area)
    @name = name
    @area = area
  end
  
  def display
    puts @name 
  end
end

c1 = College.new("jp")
c2 = College.new("jpnoida", "noida")
c1.display
c2.display