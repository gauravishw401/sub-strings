def sub_strings(str, arr) 
  punctuations = ['?', ',', '!']
  letters = str.downcase.chars.difference(punctuations).join('').split(' ')
  p letters


  occurence = {}
  arr.each do |word|
    i = 1
    letters.each do |letter|
      if letter.include?(word)
        occurence[word] = i
        i = i+1
      end
    end
  end

  p occurence

end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
sub_strings('Howdy partner, sit down! How it going?', dictionary)

