# (x) Write a method that takes one argument: an array of integers.
# (x) The method should return the minimum sum of 5 consecutive numbers in the array.
# (x) If the array contains fewer than 5 elements, the method should return nil.

def minimum_sum(int_arr)
  return nil if int_arr.size < 5

  index = 0
  slice_size = 5
  sums = []
  until (index + slice_size) == int_arr.size
    sums << int_arr[index, slice_size].sum
    index += 1
  end
  sums.min
end

# Examples:

p minimum_sum([1, 2, 3, 4]) == nil
p minimum_sum([1, 2, 3, 4, 5, 6]) == 15
p minimum_sum([55, 2, 6, 5, 1, 2, 9, 3, 5, 100]) == 16
p minimum_sum([-1, -5, -3, 0, -1, 2, -4]) == -10

# The tests above should print "true".
