def shortest(list)
  
  p list.sort_by! {|x| x.size }
  p [list.each { |y| y.length}]
 
end

p shortest(['uno', 'dos', 'tres', 'cuatro', 'cinco']) == ["uno", "dos"]
p shortest(['gato', 'perro', 'elefante', 'jirafa']) == ["gato"]
p shortest(['verde', 'rojo', 'negro', 'morado']) == ["rojo"]