class Song
  @@name = 1 # class variable, share accross all classes, all objects and subclasses
  @name = "Instance variable of class" # Instance variable of class (class (self) itself is an object)

  def initialize(name, singer, year) 
    # These are instance variables of object, unique to an object
    @name = name
    @singer = singer
    @year = year
  end

  def display
    puts "Published name: #{@name}"
    puts "Published singer: #{@singer}"
    puts "Published year: #{@year}"
  end

  def self.display_classinstance
    puts "Self: #{@name}"
  end
end

song1 = Song.new("Perfect", "Ed", 2012) # Object ID
song2 = Song.new("abc", "Ed", 2011) # Object ID
("abc", "Ed", 2011).display
song1.display
Song.display_classinstance
Song.display_classinstance
# song1.dance - noMethodError