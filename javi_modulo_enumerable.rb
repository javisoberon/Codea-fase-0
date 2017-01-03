#string nones
def odd_indexed(list)
  list.select.each_with_index { |word, index| index.even?}
end

#string tamaño mayor a 5
def long_strings(list)
  list.find_all { |word| word.length > 4}
end

#primer string que empiee con h
def start_with_h(list)
  list.detect { |word| word[0] =="h" }
end

#regresa todos con mayuscula
def capitalize_array(list)
  list.map { |word| word.capitalize }
end

#Agrupar strings primera letra
def group_by_starting_letter(list)
 list.group_by { |word| word[0] }
end

#contar numero de r
def number_of_r(list)
  list.count("r")
end


p odd_indexed(["uno", "dos", "tres", "cuatro", "cinco"]) == ["uno", "tres", "cinco"]
p long_strings(["rojo", "morado", "azul", "negro", "blanco", "naranja"]) == ["morado", "negro", "blanco", "naranja"]
p start_with_h(["manzana", "naranja", "sandia", "higo", "melon", "platano"]) == "higo"
p capitalize_array(["manuel", "juan", "rodrigo", "ana", "paola"]) == ["Manuel", "Juan", "Rodrigo", "Ana", "Paola"]
p group_by_starting_letter(["arbol", "amarillo", "angel", "burro", "barco"]) == {"a"=>["arbol", "amarillo", "angel"], "b"=>["burro", "barco"]}
p number_of_r("ferrocarril") == 4

