
def pordos(list)
  nones = selectnones(list)
  pares = selectpares(list)
  p multiplica(nones)
  p multiplica(pares)
end

def selectnones(perro)
  perro.select { |num| num % 2 != 0}
end

def selectpares(perro)
  perro.select { |num| num % 2 == 0}
end

def multiplica(array)
  array.map { |x| x * 2}
end

pordos([1,2,3])
