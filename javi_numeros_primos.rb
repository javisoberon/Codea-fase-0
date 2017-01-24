def prime_array(num)
  primes = []

  for i in 2..num
    a = true
    for e in 2..i-1
      a = false if i % e == 0
    end
    primes << i if a == true
  end
  primes.reverse!
end


def divisible(num,array)
  x = array.count - 1
  prime = 0
  for i in 0..x
    if num % array[i] == 0 
      prime = array[i]
      break
    end
    x -= 1
  end
  prime
end

def multiplicative(num, prime)
  mult = num / prime
end

def mult_primes(x)
  answer = []
  num = x
  begin
    answer << divisible(x, prime_array(x))
    x = multiplicative(x, divisible(x, prime_array(x))) 
  end while multiplicative(x, divisible(x, prime_array(x))) != 1
  answer << num / answer.reduce(:*)
  answer.reverse!
end

def prime_factors(num)
  "#{num} : #{mult_primes(num).join(" * ")}"
end


p prime_factors(1560)