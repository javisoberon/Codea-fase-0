puts "Cual es tu primera frase?"
a = gets.chomp

puts "Cual es tu segunda frase?"
b = gets.chomp

def unirstrings (x , y)
  return x + y
end

p unirstrings(a, b)