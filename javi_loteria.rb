def shuffle(array)
  newarray = []
  p newarray = array.sample(array.length)
end





array = (1..15).to_a

10.times do |variable|
  raise "No esta revolviendo bien" if shuffle(array) == shuffle(array)
end

