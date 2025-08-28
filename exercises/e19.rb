
class Array
  def time_to_seconds
    sum = 0
    each do |time|
      t = time.valid_time_24
      if(t) 
        sum += t
      else
        return p 'Invalid 24-hour time value'
      end
    end
    sum
  end
end

class String
  TIME_REGEX_24HR = /^(?<hour>[01]\d|2[0-3]):(?<minute>[0-5]\d):(?<seconds>[0-5]\d)$/
  def valid_time_24
    if t = self.match(TIME_REGEX_24HR)
      hours = t[:hour].to_i
      min = t[:minute].to_i
      seconds = t[:seconds].to_i

      hours*60*60 + min*60 + seconds
    else
      nil
    end
  end
end

class Time
  def self.sum_time(sum)
    time_initial = Time.new(0, 1, 1, 0, 0, 0)
    t = time_initial + (sum)

    sec = t.sec
    min = t.min
    hour = t.hour
    days = - time_initial.day + t.day

    [sec, min, hour, days]
  end
end

if ARGV.empty?
  print 'Please provide an input'
else
  input = ARGV
  sum = input.time_to_seconds
  
  sec, min, hour, days = Time.sum_time(sum)

  if(days>0)
    p "#{days} day & #{hour}:#{min}:#{sec}"
  else
    p "#{hour}:#{min}:#{sec}"
  end
end

