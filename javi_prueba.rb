

def dummy_encrypt(string)
  string.reverse.swapcase.gsub(/[aeio]/,"*")
end
def max_letter_frequency_per_word(sentence)
    sentence.split.select{|word| word.length > 3}.map{ |w| w.count("e") }.max
end

def words_longer_than(array,num)
  sentence.split.select{|word| word.length > 3}
end

def letter_per_word(array,letter)
  words_longer_than.map{ |w| w.count("e") }.max
end

def numbers_larger_than(num_array)
end


puts dummy_encrypt("EsteEsMiPassword") == "DROWSSApImS*ETS*"

puts max_letter_frequency_per_word("entero entrar envase enviar enzima equino equipo erario erguir eriaza eriazo erigir eringe eficientemente electroencefalografía") == 5