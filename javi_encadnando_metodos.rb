
def shout_backwards(string)
  all_caps  = string.upcase.reverse + "!!!"
end

def squared_primes(array)
  find = find_primes(array)
  result = square(find)
end

def find_primes(completelist)
  completelist.find_all{|x| (2..x-1).select{|i| x % i == 0 }.count == 0 }
end

def square(primelist)
  primelist.map { |p| p * p }
end


puts shout_backwards("hello, boot") == "TOOB ,OLLEH!!!"
puts squared_primes([1, 3, 4, 7, 42]) == [1, 9, 49]