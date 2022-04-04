# Given an array of numbers, for each number find out how many numbers
# in the array are smaller than it. When counting numbers, only count
# unique values. That is, if a given number occurs multiple times in
# the array, it should only be counted once.

def smaller_numbers_than_current(arr)
  result = []

  arr.each do |outer_element|
    # first re-factor
    # result << arr.uniq.select { |n| n < outer_element }.count
    count = 0
    arr.uniq.each do |inner_element|
      count += 1 if inner_element < outer_element
    end
    result << count
  end
  result
  # final re-factor
  # arr.map do |outer_element|
  #   arr.uniq.select { |n| n < outer_element }.count
  # end
end

# Examples:

p smaller_numbers_than_current([8,1,2,2,3]) == [3, 0, 1, 1, 2]
p smaller_numbers_than_current([1,4,6,8,13,2,4,5,4]) == [0, 2, 4, 5, 6, 1, 2, 3, 2]
#                            == [0, 2, 4, 5, 6, 1, 2, 3, 2]
p smaller_numbers_than_current([7,7,7,7]) == [0,0,0,0]
p smaller_numbers_than_current([6,5,4,8]) == [2, 1, 0, 3]
p smaller_numbers_than_current([1]) == [0]

# The tests above should print "true".
