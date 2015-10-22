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

=begin
- How do you define a local variable?

You define a local variable through assignment, local_variable = some_value. Local variables start with lowercase letters or underscores and contain letters, underscores and digits.

- How do you define a method?

You define a method with the following format:

def method(parameters)
  do_something
end

Not all methods are defined explicitly with parameters, as in the example above. The parameters tell the method what it can "expect" to receive.

- What is the difference between a local variable and a method?

From a naming standpoint, the two look exactly the same. A method is a named, executable routine whose execution the object has the ability to trigger. Basically, a method performs a routine or task (does something to an object) while a local variable is essentially a stored value.

- How do you run a ruby program from the command line?

You use the command ruby file_name.rb.

- How do you run an RSpec file from the command line?

You use the command rspec file_name.rb. Generally, it will indicate within the filename whether it is the spec file.

- What was confusing about this material? What made sense?

For the most part, it was pretty straightforward. I ran into one issue when I used "puts" instead of "p" (need to be careful with string, integer and float conversions), but otherwise I thought it made sense. Having the background of Ruby from our interview process certainly helped.

Links:

4.3.1: https://github.com/beckylehmann91/phase-0/tree/master/week-4/address
4.3.2: https://github.com/beckylehmann91/phase-0/tree/master/week-4/math

=end