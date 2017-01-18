def binary_search(num,array)

first = 0
last = array.length - 1
mid = (array.count.to_f/2).ceil
i = array[mid-1].to_i

if array[-1] < num
  -1
else
  while num != i
    if num < i
      last = mid
      mid = mid - (array[first..last].count/2).ceil
      i = array[mid-1]
    else 
      first = mid
      mid = mid + (array[first..last].count.to_f/2).ceil
      i = array[mid-1]
    end
  end
  mid -1
end
end


p binary_search(1, [1]) == 0
p binary_search(4, [1,2,3]) == -1
p binary_search(4, [1,2,3,4,5]) == 3
p binary_search(6, [1,2,3,4,5,6,7,8,9]) == 5
p binary_search(2, [1,2,3,5,6,7,8,9,10,11]) == 1
p binary_search(5, [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20]) == 4