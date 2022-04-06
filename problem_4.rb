# Write a method that takes an array of integers and returns the
# two numbers that are closest together in value.

def closest_numbers(arr)
  result = []
  smallest_difference = Float::INFINITY
  arr.each_with_index do |n, i|
    ((i + 1)...(arr.size - 1)).each do |x|
      difference = (n - arr[x]).abs
      if difference < smallest_difference
        smallest_difference = difference
        result = [] << n << arr[x]
      end
    end
  end
  result
end

# Examples:

p closest_numbers([5, 25, 15, 11, 20]) == [15, 11]
p closest_numbers([19, 25, 32, 4, 27, 16]) == [25, 27]
p closest_numbers([12, 7, 17]) == [12, 7]

# The tests above should print "true".
# ???'s
# What if collection < 2 elements?
# I assumed difference was consecutive elements. Example #2 demonstrated this
# assumption was wrong.
