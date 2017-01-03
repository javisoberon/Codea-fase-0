#Removiendo vocales
def vowels(list)
  array = []
  list.each { |word| array << word.gsub!(/[aeiou]/,"")}
end

p vowels(["banana", "carrot", "pineapple", "strawberry"]) == ["bnn", "crrt", "pnppl", "strwbrry"]

#Suma de numeros
def get_sum(num1, num2)
  mayor = 0
  menor = 0
  if num1 > num2
    mayor = num1
    menor = num2
  else
    menor = num1
    mayor = num2
  end
  menor == mayor ? menor : (menor..mayor).reduce(:+)
end

p get_sum(1, 0) == 1
p get_sum(1, 2) == 3
p get_sum(0, 1) == 1
p get_sum(1, 1) == 1
p get_sum(-1, 0) == -1
p get_sum(-1, 2) == 2

#Palabras y caracteres
def char_word_counter(sentence)
  words = sentence.split.size
  letters = sentence.size - words + 1
  "This sentence has #{words} words & #{letters} characters"
end

p char_word_counter("This is a sentence") == "This sentence has 4 words & 15 characters"
p char_word_counter("This easy") == "This sentence has 2 words & 8 characters"
p char_word_counter("This is a very complex line of code to test our program") == "This sentence has 12 words & 44 characters"
p char_word_counter("And when she needs a shelter from reality she takes a dip in my daydreams") == "This sentence has 15 words & 59 characters"

#Buscando en hashes
def food_group(food)
  food_groups = {
    "grano" => ['Arroz','Trigo', 'Avena', 'Cebada', 'Harina'],
    "vegetal" => ['Zanahoria', 'Maíz', 'Elote', 'Calabaza', 'Papa'],
    "fruta" => ['Manzana', 'Mango', 'Fresa', 'Durazno', 'Piña'],
    "carne" => ['Res', 'Pollo', 'Salmón', 'Pescado', 'Cerdo'],
    "lácteo" => ['Leche', 'Yogur', 'Queso', 'Crema']
    }
    answer = ""
    food_groups.each { |key, value| answer = key if value.include? food}
    answer == "" ? "comida no encontrada" : answer
end

p food_group('Crema') == "lácteo"
p food_group('Res') == "carne"
p food_group('Piña') == "fruta"
p food_group('Caña') == "comida no encontrada"

#Dado
class Die
  def initialize(sides)
    @sides = sides
  end

  def sides
    @sides
  end

  def sides=(new_sides)
    @sides = new_sides
  end

  def roll
    @sides == 1 ? "El dado no puede tener solo 1 cara" : "Al tirar el dado salio #{rand(1..@sides)}"
  end
end

jugador1 = Die.new(5)
p jugador1.roll
jugador1.sides = 8
p jugador1.roll
jugador1.sides = 1
p jugador1.roll

#Driving
class MyCar
  attr_accessor :year
  attr_accessor :color
  attr_accessor :model
  def initialize(year = "", color = "", model = "")
    @year = year
    @color = color
    @model = model
    @velocidad = 0
  end

  def current_speed
    "You are now going #{@velocidad} kph."
  end

  def speed_up(accelerate)
    @velocidad += accelerate
    "You push the gas and accelerate #{accelerate} kph."
  end

  def brake(decelerate)
    @velocidad -= decelerate
    "You push the brake and decelerate #{decelerate} kph."
  end

  def shut_down
    @velocidad = 0
    "Let's shut down to #{@velocidad}!"
  end
end

carro_prueba = MyCar.new

p carro_prueba.speed_up(20) == "You push the gas and accelerate 20 kph."
p carro_prueba.current_speed == "You are now going 20 kph."
p carro_prueba.speed_up(20) == "You push the gas and accelerate 20 kph."
p carro_prueba.current_speed == "You are now going 40 kph."
p carro_prueba.brake(20) == "You push the brake and decelerate 20 kph."
p carro_prueba.current_speed == "You are now going 20 kph."
p carro_prueba.brake(20) == "You push the brake and decelerate 20 kph."
p carro_prueba.current_speed == "You are now going 0 kph."
p carro_prueba.shut_down == "Let's shut down to 0!"
p carro_prueba.current_speed == "You are now going 0 kph."

#PLaylist
class Playlist
  attr_reader :name

  def initialize(name,songs)
    @name = name
    @songs = songs
    @actual_song = 0
    @next_song = 0
  end

  def number_of_songs
    @songs.size
  end

  def add_song(new_song)
    @songs << new_song
  end

  def next_song
    if @actual_song == @songs.size
      @actual_song = 0
      @next_song = @songs[@actual_song]
    else
      @next_song = @songs[@actual_song]
    end
    @actual_song += 1
    @next_song
  end
end
playlist1 = Playlist.new("Coldplay", ["The Scientist", "Paradise", "Fix You", "Up&Up"])
p playlist1.name
p playlist1.number_of_songs
p playlist1.add_song("Yellow")
p playlist1.number_of_songs
p playlist1.next_song
p playlist1.next_song
p playlist1.next_song
p playlist1.next_song
p playlist1.next_song
p playlist1.next_song
p playlist1.next_song
p playlist1.add_song("A Sky Full of Stars")
p playlist1.next_song
p playlist1.next_song
p playlist1.next_song
p playlist1.next_song
p playlist1.next_song
p playlist1.next_song
p playlist1.next_song
p playlist1.next_song
p playlist1.next_song
p playlist1.next_song
p playlist1.next_song







