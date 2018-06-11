def oddball_sum(num)
    count =0
    (0...num.length).each do |i|
        if num[i]%2 == 1
            count+=num[i]
        end
    end
return count

end

puts oddball_sum([1,2,3,4,5]) 

puts oddball_sum([1,2,3,4,5]) == 9 # => 1 + 3 + 5 == 9
oddball_sum([0,6,4,4]) == 0
oddball_sum([1,2,1]) == 2