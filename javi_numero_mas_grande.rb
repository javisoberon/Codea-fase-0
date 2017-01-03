def max (list)
  maximo = list.first
  list.each do | item | 
    if item.nil?
      next
    elsif item > maximo
      maximo = item
    end
  end
  return maximo
end

p max([-20, -10, 0, 10, 20]) == 20
p max([1, 2, 3, 4, 5]) == 5
p max([5, 4, 3, 2, 1]) == 5
