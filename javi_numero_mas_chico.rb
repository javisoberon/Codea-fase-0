def min (list)
  minimo = list.first
  list.each do | item | 
    if item.nil?
      next
    elsif item < minimo
      minimo = item
    end
  end
  return minimo
end

p max([-20, -10, 0, 10, 20]) == -20
p max([1, 2, 3, 4, 5]) == 1
p max([5, 4, 3, 2, 1]) == 1
