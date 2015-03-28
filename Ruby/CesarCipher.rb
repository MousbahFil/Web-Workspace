def cesar(text, shiftAmount)
small_letters = [*'a'..'z']
uppercase_letters = [*'A'..'Z']
cipher=text.chars.map {|x| small_letters.include?(x) ? small_letters[((small_letters.index(x)+ shiftAmount)%26)] : x}.join
cipher.chars.map {|x| uppercase_letters.include?(x) ? uppercase_letters[((uppercase_letters.index(x)+ shiftAmount)%26)] : x}.join
end

print cesar("What a string!",5)

