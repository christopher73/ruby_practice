# Write a method that takes in two numbers. Return the greatest
# integer that evenly divides both numbers. You may wish to use the
# `%` modulo operation.
#
# Difficulty: medium.

def greatest_common_factor(num1, num2)

  if num1<num2
    if (num1%num1==0 && num2%num1==0 ) || num1==1
      return num1
    else 
      num1 -=1
    end
  end



end
# These are tests to check that your code is working. After writing
# your solution, they should all print true.
puts greatest_common_factor(3, 5)

puts(
  'greatest_common_factor(3, 9) == 3: ' +
  (greatest_common_factor(3, 9) == 3).to_s
)
puts(
  'greatest_common_factor(16, 24) == 8: ' +
  (greatest_common_factor(16, 24) == 8).to_s
)
puts(
  'greatest_common_factor(3, 5) == 1: ' +
  (greatest_common_factor(3, 5) == 1).to_s
)
