#4.2 Reflection

- What does puts do?

Puts stands for "put string" and will print an output to the console with a new line but will return nil.

- What is an integer? What is a float?

An integer is a number without decimals. A float (floating-point number) is a number with decimals.

- What is the difference between float and integer division? How would you explain the difference to someone who doesn't know anything about programming?

Float division will include decimals in the output if the quotient is not an integer (ex. puts 9.0 / 2.0 --> 4.5). With integer division, the output will always be an integer, rounding down to the nearest value. So the same calculation above with integers will look like: puts 9 / 2 --> 4. It rounds down because in programming, rounding up with integers could result in an error (ex. I have $9 and each piece of candy costs $2. How many pieces of candy can I buy? The answer would be 4, not 5.).

##Hours in a year:

```ruby
puts 24 * 365
8760
```

##Minutes in a decade:

```ruby
puts ((60 * 24) * 365) * 10
5256000
```

- How does Ruby handle addition, subtraction, multiplication, and division of numbers?

Ruby handles addition, subtraction, multiplication and division using the following symbols (in order): +, -, *, /. It can complete arithmetic using either integers or floats. You can even add strings ("Becky" + "Lehmann" => "Becky Lehmann") or multiply strings by integers ("Becky" * 2 => "Becky""Becky").

- What is the difference between integers and floats?

Floats have decimals while integers do not.

- What is the difference between integer and float division?

As described above, integer division will provide an integer as the quotient, rounding down to the nearest integer value. Float division will provide a float quotient. Division between an integer and a float will result in a float.

- What are strings? Why and when would you use them?

Strings are series of letters. You would use them when the object is not of another class, such as an integer, array or boolean. They are often words or sentences, bracketed by "" signs.

- What are local variables? Why and when would you use them?

Local variables are variables which are limited to the code construct where they're declared (such as a method or loop). They start with a lowercase letter or underscore and consist of underscores, letters and digits.

- How was this challenge? Did you get a good review of some of the basics?

The challenge was good, simpler than I initially thought it would be. It was a good review from what we learned several weeks ago during the interview process.

##Links

4.2.1 : https://github.com/beckylehmann91/phase-0/blob/master/week-4/defining-variables.rb

4.2.2 : https://github.com/beckylehmann91/phase-0/blob/master/week-4/simple-string.rb

4.2.3 : https://github.com/beckylehmann91/phase-0/blob/master/week-4/basic-math.rb
