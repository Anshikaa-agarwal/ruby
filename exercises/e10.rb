# hashh = {1=>["1", "2", "3"], 3=>["bye"], 4=>["good"], 5=>["hello", "world"]} 
# output = Hash.new { |h, k| h[k] = [] }
# hashh.each do |key, value|
#   if key%2 == 0
#     output['even'].push(value)
#   else
#     output['odd'].push(value)
#   end
#   output
# end

class Array
  def words_by_length
    hashh = Hash.new { |h, k| h[k] = [] }

    each do |element|
      hashh[element.size].push(element)
    end
    hashh.sort_by { |k,v| k}.to_h
  end

  def even_odd
    hashh = words_by_length
    output = { 'even' => [], 'odd' => [] }
    hashh.each do |key, value|
      if key % 2 == 0
        output['even'].push(*value)
      else
        output['odd'].push(*value)
      end
    end
    output
  end

end

if ARGV.empty?
  print 'Please provide an input'
else
  arr = ARGV[0]
  arr = arr.tr('[]', '').split(',')
  STR = /['*']/

  arr = arr.map do |element|
    if element.match?(STR)
      element.tr("''", '')
    else 
      element
    end
  end

  p arr.even_odd
end