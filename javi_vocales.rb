def vowels(x)
  p x.downcase.scan(/[aeiou]/).count
end

p vowels("hello") == 2
p vowels("Magic") == 2
p vowels("Apologize") == 5