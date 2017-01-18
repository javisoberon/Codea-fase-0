require "benchmark"

time1 = Benchmark.realtime do

def fibonacci_iterative(num)
  fibonacci_series = [0, 1]
  y = 2
  if num == 0
    0
  else
    until y ==  num + 1
      fibonacci_series << ( fibonacci_series[y - 2] + fibonacci_series[y - 1] )
      y += 1
    #p fibonacci_series
    end
    fibonacci_series[num]
  end
end

p fibonacci_iterative(0) == 0
p fibonacci_iterative(1) == 1
p fibonacci_iterative(2) == 1
p fibonacci_iterative(3) == 2
p fibonacci_iterative(4) == 3
p fibonacci_iterative(5) == 5

end

time2 = Benchmark.realtime do
  
def fibonacci_recursive(num)
  if num == 0
    0
  elsif num == 1
    1
  else
    fibonacci_recursive(num - 1) +  fibonacci_recursive(num - 2)
  end
end

p fibonacci_recursive(0) == 0
p fibonacci_recursive(1) == 1
p fibonacci_recursive(2) == 1
p fibonacci_recursive(3) == 2
p fibonacci_recursive(4) == 3
p fibonacci_recursive(5) == 5

end


p time1

p time2





