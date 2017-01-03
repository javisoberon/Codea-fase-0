def longest (list)
 list.sort_by! {|x| x.length}.reverse!
 p list.map { |x| x if list.first.length == x.length}.compact!.sort { |a, b| a <=> b }
end
p longest(['tres', 'pez', 'alerta', 'cuatro', 'tesla', 'tropas', 'siete']) == ["alerta", "cuatro", "tropas"]
p longest(['gato', 'perro', 'elefante', 'jirafa']) == ["elefante"]
p longest(['verde', 'rojo', 'negro', 'morado']) == ["morado"]