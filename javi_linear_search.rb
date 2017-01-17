def linear_search(num, array)
  for i in 0..array.length - 1
    if array[i] == num
      return i
    end
  end
  return nil
end

a = [2, 4, 5, 8, 20]

p linear_search(20,a)

def global_linear_search(letter,arr)
  result = []
  for i in 0..arr.length - 1
    if arr[i] == letter
      result << i
    end
  end
  result
end

arr = "entretenerse".split("")
p global_linear_search("e", arr)