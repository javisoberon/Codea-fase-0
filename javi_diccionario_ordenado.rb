def ask_words
  @array = []
  puts "Escribe una palabra:"
  @word = gets.chomp
  @array << @word
  until @word == ""
    puts "Escribe otra palabra(o presiona 'enter' para finalizar):"
    @word = gets.chomp
    p @word
    @array << @word
  end
  dictionary
  result
end

def dictionary
  @dictionary = @array.sort_by(&:downcase)
  p @dictionary
end

def result
  puts "Felicidades! Tu diccionario tiene #{@dictionary.length - 1} palabras:"
  (1..@dictionary.length-1).each { |placeholder| puts @dictionary[placeholder]}
end

ask_words

