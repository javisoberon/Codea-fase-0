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

100000.times do
  fibonacci_iterative(15)
end

end

time2 = Benchmark.realtime do

def fibonacci_recursive(num)
  if num < 2
    num
  else
    fibonacci_recursive(num - 1) +  fibonacci_recursive(num - 2)
  end
end

100000.times do
  fibonacci_recursive(15)
end

end


p time1

p time2





