def count_strings(words, dictionary)
    words_hash = Hash.new(0)
    words_array = words.downcase.split
        
    dictionary.each do |item|
      words_array.each do |word|
        if(word.include? item)
          words_hash[item] += 1
        end
      end
    end
    words_hash
end