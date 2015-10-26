# Analyze the Errors

# I worked on this challenge by myself.
# I spent 1 hour on this challenge.

# --- error -------------------------------------------------------

#"Screw you guys " + "I'm going home." = cartmans_phrase

# This error was analyzed in the README file.
# --- error -------------------------------------------------------
=begin
def cartman_hates(thing)
  while true
    puts "What's there to hate about #{thing}?"
end
=end
# This is a tricky error. The line number may throw you off.

# 1. What is the name of the file with the error?
# The error occurs in the errors.rb file.
# 2. What is the line number where the error occurs?
# Line 170.
# 3. What is the type of error message?
# Syntax error.
# 4. What additional information does the interpreter provide about this type of error?
# Unexpected end-of-input, expecting keyword_end
# 5. Where is the error in the code?
# The Intepreter expects an "end" at the end of the file.
# 6. Why did the interpreter give you this error?
# The cartman_hates method is missing an "end" after the while loop.

# --- error -------------------------------------------------------

# south_park

# 1. What is the line number where the error occurs?
# Line 35.
# 2. What is the type of error message?
# Name Error.
# 3. What additional information does the interpreter provide about this type of error?
# It says there is an undefined variable, "south_park"
# 4. Where is the error in the code?
# The error is in the object "south_park"
# 5. Why did the interpreter give you this error?
# The variable south_park does not have an assigned value.

# --- error -------------------------------------------------------

# cartman()

# 1. What is the line number where the error occurs?
# Line 50.
# 2. What is the type of error message?
# No Method Error.
# 3. What additional information does the interpreter provide about this type of error?
# It says there is an undefined method, "cartman"
# 4. Where is the error in the code?
# The error occurs because the method above is not properly defined.
# 5. Why did the interpreter give you this error?
# The definition is incomplete, needs the format def cartman (parameters)

# --- error -------------------------------------------------------

# def cartmans_phrase
#  puts "I'm not fat; I'm big-boned!"
# end

# cartmans_phrase('I hate Kyle')

# 1. What is the line number where the error occurs?
# Line 65.
# 2. What is the type of error message?
# Argument Error.
# 3. What additional information does the interpreter provide about this type of error?
# Wrong number of arguments in "cartmans_phrase"
# 4. Where is the error in the code?
# Occurs when the method is called.
# 5. Why did the interpreter give you this error?
# It is giving an error because there are zero arguments defined in the method definition, but the user specifies one argument when the method is called.

# --- error -------------------------------------------------------
=begin
def cartman_says(offensive_message)
  puts offensive_message
end

cartman_says
=end
# 1. What is the line number where the error occurs?
# Line 84.
# 2. What is the type of error message?
# Argument Error.
# 3. What additional information does the interpreter provide about this type of error?
# Wrong number of arguments (0 for 1)
# 4. Where is the error in the code?
# In its definition, the method specifies one argument (offensive_message), but no argument is specified when the method is called.
# 5. Why did the interpreter give you this error?
# Need to specify argument offensive_message when cartman_says is called.



# --- error -------------------------------------------------------
=begin
def cartmans_lie(lie, name)
  puts "#{lie}, #{name}!"
end

cartmans_lie('A meteor the size of the earth is about to hit Wyoming!')
=end
# 1. What is the line number where the error occurs?
# Line 105.
# 2. What is the type of error message?
# Argument Error.
# 3. What additional information does the interpreter provide about this type of error?
# Wrong number of arguments (1 for 2).
# 4. Where is the error in the code?
# The error occurs when the method is called.
# 5. Why did the interpreter give you this error?
# The Interpreter expects two arguments (lie and name) but only one is specified when the mathod is called.

# --- error -------------------------------------------------------

# 5 * "Respect my authoritay!"

# 1. What is the line number where the error occurs?
# Line 124.
# 2. What is the type of error message?
# Type Error
# 3. What additional information does the interpreter provide about this type of error?
# It says the string can't be changed to Fixnum.
# 4. Where is the error in the code?
# Interpreter can't complete the type conversion.
# 5. Why did the interpreter give you this error?
# This string cannot be converted into Fixnum.

# --- error -------------------------------------------------------

# amount_of_kfc_left = 20/0


# 1. What is the line number where the error occurs?
# Line 139.
# 2. What is the type of error message?
# Zero Division Error.
# 3. What additional information does the interpreter provide about this type of error?
# Error is occuring because dividing by zero.
# 4. Where is the error in the code?
# Interpreter cannot divide by zero (undefined).
# 5. Why did the interpreter give you this error?
# The value assigned is undefined, as you cannot divide by zero.

# --- error -------------------------------------------------------

#require_relative "cartmans_essay.md"

# 1. What is the line number where the error occurs?
# Line 155.
# 2. What is the type of error message?
# Load Error.
# 3. What additional information does the interpreter provide about this type of error?
# It says "cannot load such file"
# 4. Where is the error in the code?
# The Interpreter cannot understand the relative reference.
# 5. Why did the interpreter give you this error?
# The relative reference is invalid, as the file does not exist within the path.


# --- REFLECTION -------------------------------------------------------
# Write your reflection below as a comment.
=begin
- Which error was the most difficult to read?
The first error was the most difficult to read. The method definition was missing an "end" for the while loop, which caused the error to "occur" much further down the page.
- How did you figure out what the issue with the error was?
The error description was the most helpful, as it provided more detail about the error type.
- Were you able to determine why each error message happened based on the code?
Yes, I was. Again, the error description was very helpful. Also, it seemed many of the errors were small, basic missings in the definitions of variables and methods.
- When you encounter errors in your future code, what process will you follow to help you debug?
I will walk through the error message step-by-step. I like how the error messages are organized, as it points you first to where the message occurs, the error type and a brief description.

=end