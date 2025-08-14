# import ruby's standard csv library
require "csv"

class CSVMethods

  # prints multiple files
  def readFiles(files)
    files.each_with_index do |book, index|
      puts "Printing details of book #{index+1}"
      CSV.foreach(book, headers: true) do |row|
        print "#{row}"
      end
      print "\n"
    end
  end

  # writes a file
  def writeOpen(files)
    files.each do |file|
      CSV.open(file, 'w') do |row|
        row << ['Name', 'Age', 'City']
        row << ['Alice', 25, 'London']
      end
    end
  end

  # reads a file by opening it
  def readOpen(*files)
    files.each do |file|
      print "Reading file using 'open' #{file}: \n"
      CSV.open(file, 'r') do |el|
        el.each do |row|
          print "#{row} \n"
        end
      end
    end
  end

  # create a csv file using array
  def create_csv_array(arr, file_loc)
    CSV.open(file_loc, 'w') do |csv|
      arr.each do |element|
        csv << element
      end
    end
  end

  # read into table
  def tableMethod(files)
    files.each do |file|
      table = CSV.table(file)
      puts table[:name]
    end
  end

end

s1 = CSVMethods.new
s1.readFiles(ARGV)
arr = [
  ["Name", "Age", "City"],
  ["Alice", 25, "London"],
  ["Bob", 30, "Paris"],
  ["Charlie", 22, "New York"],
  ["Diana", 28, "Tokyo"]
]

s1.readFiles(["csv_files\\book1.csv", "csv_files\\book2.csv", "csv_files\\book3.csv"])
s1.writeOpen(["csv_files\\book4.csv"])
s1.readFiles(["csv_files\\book4.csv"])

s1.readOpen("csv_files\\book1.csv", "csv_files\\book2.csv", "csv_files\\book3.csv")

s1.create_csv_array(arr, "csv_files\\generated_with_array.csv");

s1.readOpen("csv_files\\generated_with_array.csv")

s1.tableMethod(["csv_files\\generated_with_array.csv"])
