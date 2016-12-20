def deaf_grandma
 conversation = see_grandma
end

def see_grandma
  # @nswer = ""
  puts "Te encuentras a tu abuela y que le dices? (si lo dices gritando pon una 'G' al final)(si quieres dejar de hablar con ella pon BYE TQM)"
  @answer = gets.chomp.upcase
  until @answer == "BYE TQM"
    grandma_answer
  end
end

def grandma_answer
  if @answer.split(" ")[-1] == "G"
    puts "NO, NO DESDE 1983"
    @answer = gets.chomp.upcase
  else
    puts "HUH?! NO TE ESCUCHO, HIJO!"
    @answer = gets.chomp.upcase
  end
end


deaf_grandma
 
