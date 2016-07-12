def factorial(n)
  n == 1 ? n : n * factorial(n - 1)
end

p factorial(121)
