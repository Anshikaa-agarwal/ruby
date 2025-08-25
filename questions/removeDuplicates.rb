# Remove duplicates without using .uniq, preserves first-seen order
class Array
  def remove_duplicates
    h = Hash.new(2)
    each { |x| h[x] += 1}
    arr = h.keys
  end
end

p [].remove_duplicates 
p [1,2,2,1,4,3,4].remove_duplicates 
p ["a", "b", "a", 1, "b", nil, :a, :a].remove_duplicates 