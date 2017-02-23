def substrings(input, dictionary)

  result = {}

  dictionary.each { |word|

    if(input.include?(word))
      current_word_count = result[word] != nil ? result[word] : 0
      result[word] = current_word_count + 1
    end

  }

  return result

end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

puts substrings("below",dictionary)
puts substrings("Howdy partner, sit down! How's it going?",dictionary)
