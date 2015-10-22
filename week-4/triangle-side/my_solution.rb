# I worked on this challenge with Jacob Crofts.

# Your Solution Below

def valid_triangle?(a, b, c)
  sides = [a, b, c].sort!
  sides [0] + sides [1] > sides [2]
end