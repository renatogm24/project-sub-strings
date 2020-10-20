def substrings(phrase,dictionary)
  result = {}
  phrase.split(" ").to_a.each do |word|
    dictionary.each do |dic_word|
      if word.downcase[dic_word.downcase]
        if result.has_key?(dic_word)
          result[dic_word] += 1
        else
          result[dic_word] = 1
        end
      end
    end
  end  
  return result
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

begin
    print "Enter a phrase (only letters):"
    phrase = gets.chomp
end until phrase.chomp.match?(/^[[:alpha:][:blank:]]+$/)

puts substrings(phrase, dictionary)