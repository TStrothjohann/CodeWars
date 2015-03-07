def sum_pairs(array, sum)
@array_copy = Array.new(array)
@results = []
n = array.length

n.times do 
    @adder = array.shift
    @results << array.select{|num| @adder + num == sum}
end

if @results.flatten.length > 1 && @array_copy.reverse.index(@results.flatten.first) < @array_copy.reverse.index(@results.flatten.last)
  orig = @results.flatten.last
else
  orig = @results.flatten.first
end
  if @results.flatten == []
    return nil
  else
    sum < 0 ? sum*(-1) : sum
    return [sum-orig,orig]
  end
end