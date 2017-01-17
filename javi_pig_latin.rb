p first = Time.now
def pig_latin_word
  p "Write a word"
  word = gets.chomp
  emptystring = ""
  word.downcase!
  i = 0
  until word[i].match(/[aeiou]/)
    i += 1
  end

  if i == 0
    p emptystring = word + "way"
  else
    p emptystring = word.slice(i,word.length-i) + word.slice(0, i) + "ay"
  end
end

def pig_latin_sentence
  p "write a sentence"
  sentence = gets.chomp
  emptystring = ""
  array = []
  answer = ""
  array = sentence.split(" ")
  array.each do |word|
    word.downcase!
    i = 0
    until word[i].match(/[aeiou]/)
      i += 1
    end

    if i == 0
      emptystring = word + "way" + " "
      answer << emptystring
    else
      emptystring = word.slice(i,word.length-i) + word.slice(0, i) + "ay" + " "
      answer << emptystring
    end
  end
  answer.rstrip!
  p answer

end
#Pruebas

pig_latin_word
pig_latin_sentence

p second = Time.now
p second - first
