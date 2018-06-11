# Write a method that takes in a string. Your method should return the
# most common letter in the array, and a count of how many times it
# appears.
#
# Difficulty: medium.

def most_common_letter(string)

  string.split

  l=nil
  c=nil

  (0..string.length-1).each do |i|
    le=string[i]
    x=0
      (0..string.length-1).each do |j|
        if string[j]==le
          x += 1
        end
      end
        if c==nil || x>c
          c=x
          l=le
        end
  end

  return [l,c]

end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.
puts most_common_letter('abccccabb')

puts(
  'most_common_letter("abca") == ["a", 2]: ' +
  (most_common_letter('abca') == ['a', 2]).to_s
)
puts(
  'most_common_letter("abbab") == ["b", 3]: ' +
  (most_common_letter('abbab') == ['b', 3]).to_s
)
