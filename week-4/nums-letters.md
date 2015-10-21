What does puts do?

Puts stands for "put string" and will print an output to the console with a new line but will return nil.

What is an integer? What is a float?

An integer is a number without decimals. A float (floating-point number) is a number with decimals.

What is the difference between float and integer division? How would you explain the difference to someone who doesn't know anything about programming?

Float division will include decimals in the output if the quotient is not an integer (ex. puts 9.0 / 2.0 --> 4.5). With integer division, the output will always be an integer, rounding down to the nearest value. So the same calculation above with integers will look like: puts 9 / 2 --> 4. It rounds down because in programming, rounding up with integers could result in an error (ex. I have $9 and each piece of candy costs $2. How many pieces of candy can I buy? The answer would be 4, not 5.).

#Hours in a year:

```ruby
puts 24 * 365
8760
```

#Minutes in a decade:

```ruby
puts ((60 * 24) * 365) * 10
5256000
```
