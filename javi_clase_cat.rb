class Cat
  @@count = 0
  def initialize(name)
    @name = name
  end

  def self.meow
    "Miau... Miau..."
  end

  def jump
    "Saltando..."
  end

  def run(distance = 0)
    @@count += distance
    "Corriendo #{@@count} mts..."
    
  end
end

cat_1 = Cat.new("catty")
cat_2 = Cat.new("jhony")
cat_3 = Cat.new("tom")
cat_4 = Cat.new("michael")
cat_5 = Cat.new("patty")

p cat_1.jump == "Saltando..."
p cat_5.jump == "Saltando..."
p Cat.meow == "Miau... Miau..."
p cat_3.run == "Corriendo 0 mts..."
p cat_3.run(20) == "Corriendo 20 mts..."
p cat_3.run(10) == "Corriendo 30 mts..."
p cat_3.run(10) == "Corriendo 40 mts..."