def are_anagrams?(word1, word2)
  a = true
  word1.split("").each do |variable|
    a = false if word2.include?(variable) == false
  end
  a
end


p are_anagrams?("hola", "looha")


def are_anagrams(word1, word2)
  canonical(word1) == canonical(word2)
end

def canonical(word)
  word.split("").sort.join("")
end



p are_anagrams("hola", "loha")