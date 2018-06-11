# Write a method that takes in a number and returns a string, placing
# a single dash before and after each odd digit. There is one
# exception: don't start or end the string with a dash.
#
# You may wish to use the `%` modulo operation; you can see if a number
# is even if it has zero remainder when divided by two.
#
# Difficulty: medium.

def dasherize_number(num)

arr=num.to_s.split(//)
newarr=""

(0...arr.length).each do |i|
  
  x=arr[i].to_i

    if i>0
      y=arr[i-1].to_i
        if x%2==1 || y%2==1
          newarr+="-"
        end
    end

  newarr+=arr[i]
end

return newarr
end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.
puts dasherize_number(333)

puts(
  'dasherize_number(203) == "20-3": ' +
  (dasherize_number(203) == '20-3').to_s
)
puts(
  'dasherize_number(303) == "3-0-3": ' +
  (dasherize_number(303) == '3-0-3').to_s
)
puts(
  'dasherize_number(333) == "3-3-3": ' +
  (dasherize_number(333) == '3-3-3').to_s
)
puts(
  'dasherize_number(3223) == "3-22-3": ' +
  (dasherize_number(3223) == '3-22-3').to_s
)
