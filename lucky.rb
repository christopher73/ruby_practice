def lucky_sevens? (numbers)
numbers<<0<<0
    (0...numbers.length).each do |i|
        c=0
        (i...i+3).each do |j|
            c+=numbers[j]
        end
        if c==7
            
            return true
        end
    end
    return false 
end

puts (lucky_sevens?([7,7,7,7]) == false) # => 1 + 5 + 1 == 7
puts (lucky_sevens?([0,-2,1,8]) == true) # => -2 + 1 + 8 == 7
puts (lucky_sevens?([7,7,7,7]) == false)
puts (lucky_sevens?([3,4,3,4]) == false)