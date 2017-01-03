# def valoreshash(list)
#   arreg = []
#   list.map { | key, value | arreg.push(key)}
#   return arreg
# end

# movies = {
#   Gladiator: 3,
#   Troy: 4,
#   Zorro: 1
# }

# p valoreshash(movies) == [:Gladiator, :Troy, :Zorro]

def valoreshash(list)
  list.values
end
movies = {
  Gladiator: 3,
  Troy: 4,
  Zorro: 1
}

p valoreshash(movies) == [3, 4, 1]
