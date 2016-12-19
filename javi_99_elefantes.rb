def elefantes(broke)
  if broke < 99
    (1..broke).each { |number| puts "#{number} elefante se columpiaba sobre la tela de una araña, como veía que resistía fueron a llamar a otro elefante."}
  else
    (1..99).each { |number| puts "#{number} elefante se columpiaba sobre la tela de una araña, como veía que resistía fueron a llamar a otro elefante."}
  end
end

elefantes(120)

def beer(from)
  from.downto(0) { |number| puts "#{number} bottles of beer"}
end

beer(88)
