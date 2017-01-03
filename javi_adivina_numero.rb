class NumberGuessingGame
  def initialize
    @aleatorio = rand(0..9)
  end

  def guess(numero)
    case 
      when numero == @aleatorio then  return "You got it!"
      when numero < @aleatorio then  return "Too low"
      when numero > @aleatorio then  return "Too high" 
      else "error"
    end
  end
end

game = NumberGuessingGame.new

p game.guess(5) == "Too low"

p game.guess(8) == "Too high"

p game.guess(7) == "Too high"

p game.guess(6) == "You got it!"