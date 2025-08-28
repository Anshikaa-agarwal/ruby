# frozen_string_literal: true

# class Name
class Name
  def initialize(firstname, lastname)
    @firstname = firstname
    @lastname = lastname
  end
  
  attr_accessor :firstname, :lastname
  CAPTIAL_START = /^[A-Z]/.freeze
  
  def check_names
    raise FirstBlankError, 'Firstname cannot be blank' if firstname == ""
    raise LastBlankError, 'Lastname cannot be blank' if lastname == ""
    raise FirstCapitalError, 'Firstname cannot be blank' if firstname !~ Name::CAPTIAL_START
    raise LastCapitalError, 'Lastname cannot be blank' if lastname !~ Name::CAPTIAL_START
    
    puts "Your name is #{firstname} #{lastname}"
  rescue FirstBlankError, LastBlankError, FirstCapitalError, LastCapitalError => e
    puts e.message
  end
end

if ARGV.empty?
  puts 'Please provide an input'
else
  name = Name.new(ARGV[0], ARGV[1])
  name.check_names
end