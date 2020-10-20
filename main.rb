def substrings(phrase,dictionary)
  result = Hash.new(0)
  phrase.split(" ").to_a.each do |word|
    dictionary.each do |dic_word|
      #alternatively can use include?   
      result[dic_word] += 1 if word.downcase[dic_word.downcase]
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