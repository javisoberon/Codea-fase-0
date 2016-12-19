def replace_vowels(list)
  list.gsub(/([aeiou])/, "x")
end

p replace_vowels(["banana", "apple"]) == ["bxnxnx", "xpplx"]