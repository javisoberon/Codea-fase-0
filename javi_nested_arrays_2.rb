def gato
  array = ["X", "O"]
  cat = Array.new(3){Array.new(3)}
  for i in 0..2
    for x in 0..2
      cat[i][x] = array.sample
    end
  end
  cat
end

gato

def gato2
  array = ["X", "O"]
  cat = Array.new(3){Array.new(3)}
  for i in 0..2
    for x in 0..2
      cat[i][x] = array.sample
    end
  end
  cat
end

gato2

table = [["Nombre", "Edad", "Genero", "GRupo", "Calificaciones"],
        ["Rodrigo Garcia", 13, "Masculino", "PRimero", [9, 9, 7, 6, 8]],
        ["Fernanda GOnzalez", 12, "Femenino", "Tercero", [6, 9, 8, 6, 8]],
        ["Luis Perez", 13, "Masculino", "Primero", [8, 7, 7, 9, 8]],
        ["Ana Espinoza", 14, "Femenino", "Segundo", [9, 9, 6, 8, 8]],
        ["Pablo MOran", 11, "Masculino", "Segundo", [7, 8, 9, 9,8]]]

def arraytohash(array)
  clas = []
  for i in 1..array.length - 1
    hash = Hash[array[0].zip(array[i])]
    clas << hash
  end
  clas
end

p arraytohash(table)