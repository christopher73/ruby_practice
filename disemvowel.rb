def disemvowel(string)
    return string.gsub(/[aeiou]/i,'')

end

puts disemvowel("foobar") 
disemvowel("ruby") == "rby"
disemvowel("aeiou") == ""