# Write a method that takes an array of numbers in. Your method should
# return the third greatest number in the array. You may assume that
# the array has at least three numbers in it.
#
# Difficulty: medium.

def third_greatest(nums)
  
 
  a = nil
  b = nil
  c = nil
  i = 0 
  while i < nums.length 
    if a == nil || nums[i] > a
      c = b
      b = a
      a = nums[i]
    elsif b == nil || nums[i] > b
      c = b
      b = nums[i]
    elsif c == nil || nums[i] > c
      c = nums[i]
    end 
    i+= 1 
  end
  return c
  
end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.
puts third_greatest([5, 3, 7]) 
puts(
  'third_greatest([5, 3, 7]) == 3: ' +
  (third_greatest([5, 3, 7]) == 3).to_s
)
puts(
  'third_greatest([5, 3, 7, 4]) == 4: ' +
  (third_greatest([5, 3, 7, 4]) == 4).to_s
)
puts(
  'third_greatest([2, 3, 7, 4]) == 3: ' +
  (third_greatest([2, 3, 7, 4]) == 3).to_s
)
