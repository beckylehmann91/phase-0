# Leap Years

# I worked on this challenge with Jacob Crofts.

# Your Solution Below

def leap_year?(year)
  (year % 4 == 0) && ((year % 400 == 0) || (year % 100 != 0))
end