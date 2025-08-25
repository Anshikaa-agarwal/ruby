# find largest in array
class Array
  def max
    if empty?
      nil
    else
      maxx = first
      each { |x| maxx = x if x > maxx}
    end
    maxx
  end
end

p [].max

