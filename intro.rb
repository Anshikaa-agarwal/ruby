# PRINT: Puts - next line, Print - same line
puts "hello world!"
print "heyy"

# VARIABLES
name = "Anshika"
puts "Hello #{name} " + name

# DATA TYPES
## numbers
time = 60
dist = 7.8

## bool
if(0) 
  puts "0 is truthy"
else 
  puts "0 is falsey"
end 

if(nil) 
  puts "true"
else 
  puts "only nil and false are falsey"
end

## strings
greet = "Welcome"
name = "Anshika"
puts "using double quotes: \n" + "#{greet}, #{name}. Let's meet in c:\\books"
puts 'using single quotes: \n' + '#{greet}, #{name}. Let\'s meet'

## hashes (object in js)
name_age = {"a" => 20, "b" => 30, "c" => 14, "d" => 17,};
name_age.each do |k, v|
  puts "Name: #{k}, age: #{v}"
end
newHash = Hash.new(1000000)
puts newHash[0]

print name_age

## array
arr = [1, "string", 4.9, true, {"key1" => "value1", "key2" => "value2"}]
arrString = %w{apple banana cherry dragon-fruit}
puts "Array of strings with %w: #{arrString.inspect}" 
arr.each do |i|
  puts i
end

## symbols: light-weight strings
=begin
when we use string, let's say 'name', ruby creates a new object every time we use it
but when we use symbol, let's say ':name', ruby reuses it
=end

hash_symbol = {
  :a => "apple",
  :b => "banana",
  :c => "citrus",
  :d => "dragon fruit",
}

hash_symbol.each do |key, value|
  puts "#{key} - #{value}"
end