class Array
  def words_by_length
    hashh = Hash.new { |k,v| k[v] = [] }
    each do |element|
      hashh[element.size].push(element)
    end
    hashh = hashh.sort_by { |k,v| k}
    p hashh.to_h
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

  arr.words_by_length
end
