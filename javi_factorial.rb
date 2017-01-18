def factorial_iterative(num)
  variable = num - 1
  constant = num
  result = 0
  if num == 0 
    1
  else
    until variable == 0
      constant = constant * variable
      variable -= 1
    end
    constant
  end
end

def factorial_recursive(num)
  if num == 0
    1
  else
    factorial_recursive(num - 1) * num
  end
end

p factorial_recursive(6)

p factorial_iterative(6)
