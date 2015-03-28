def substrings(word, strings)
result=Hash.new
    word=word.downcase
    strings.each do |s|        
        if(word.include? s.downcase)
        result.store(s, word.downcase.scan(s.downcase).length)
        end        
    end
result
end