puts "Hello! What is your first name?"
first_name = gets.chomp.capitalize!
puts "Great, what about your middle name?"
middle_name = gets.chomp.capitalize!
puts "Cool! What\'s your last name?"
last_name = gets.chomp.capitalize!
puts "Nice to meet you, " + first_name + " " + middle_name  + " " + last_name  + "!"

puts "Hello, what is your favorite number?"
favorite_number = gets.chomp.to_i
better_number = favorite_number + 1
puts "Well, " + better_number.to_s + " is an even better number than " + favorite_number.to_s + "!"