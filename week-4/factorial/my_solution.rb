# Factorial

# I worked on this challenge Bryan Munroe.

# Your Solution Below

def factorial(number)
  n = 0
  x = 1
  if number == 0
    return 1
  else
    while number > 0
      x = x * number
      number -= 1
    end
  end
  return x
end