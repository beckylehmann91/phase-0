#Attr Methods

# I worked on this challenge by myself.

# I spent 2 hours on this challenge.

# Pseudocode

# Input: Variable @name with my name ("Becky")
# Output: Greeting, including my name
# Steps:
# Create a class NameData that initializes a variable @name with my name
# Include a method attr_accessor that will indicate a symbol :name, so that it can be reference in another method
# Define a class Greetings that initializes an instance of NameDate
# Include a method attr_accessor that will indicate a symbol :name, so that it can reference :name from another method
# Within Greetings, include a method "hello" that displays a greeting to the console

class NameData
  attr_accessor :name

  def initialize
    @name = "Becky"
  end
end

class Greetings
  attr_accessor :name

  def initialize
    @greeting = NameData.new
  end

  def hello
    p "Hello, #{@greeting.name} - It's great to see you!"
  end
end

greet = Greetings.new
p greet.hello


# Reflection
=begin
Release 0:
- What are these methods doing?

The class begins with an initialize method where multiple instance variables are defined:@name, @age and @occupation. The subsequent methods are setter methods which allow the user to redefien each of the instance variables. For example, change_my_age takes an argument new_age, which is then assigned to the @age variable. Thus, in the output, we see that the age changes from 27 to 28. The code then specifies to print the values to the console.

-How are they modifying or returning the value of instance variables?

As explained above, the code modifies the value of the instance variables by using subsequent methods to reassign an argument value to the variable. The most recent value is then printed to the console.

Release 1:
- What changed between the last release and this release?

This release uses attr_reader for the attribute :age.

- What was replaced?

The attr_reader replaced the method, "what_is_age."

- Is this code simpler than the last?

Yes, it is simpler than the last. The "what_is_age" value solely served the purpose of returning the value of @age. The attr_reader is a more concise way of achieving the same thing.

Release 2:
- What changed between the last release and this release?

This release uses attr_writer for the attribute :age.

- What was replaced?

The attr_writer replaced the method, "change_my_age."

- Is this code simpler than the last?

Yes, because the change_my_name method served the purpose of redefining the value of @age. The attr_writer identifies which attributes can be changed or "written."

Release 3:
- What changed between the last release and this release?

The previous release used attr_reader and attr_writer for the attribute, :age. This release uses attr_accessor to cover both methods.

- What was replaced?

Attr_reader and attr_writer were replaced.

- Is this code simpler than the last?

Yes, this code is simpler than the last because it uses one method, attr_accessor, in place of two.

Release 5:
What is a reader method?

A reader method (attr_reader) is used for instance variables that are assigned a value in one class, which you want to be "read" in a different class.

What is a writer method?

A writer method (attr_writer) serves a similar purpose to a reader method, but is included when you also want to be able to change the value of the instance method later in the code.

What do the attr methods do for you?

The attr methods allow you to reference instance variables from one class in another class. Instance variables are otherwise limited to the class in which they are defined.

Should you always use an accessor to cover your bases? Why or why not?
What is confusing to you about these methods?

You should not always use an accessor to cover your bases. First of all, it could cause serious issues if there is a bug in the code later on. Also, it could have security implications, as you don't want attributes (information) to be overly accessible. I'm still a bit confused about how to use and reference them. I'm not sure I totally understand why they are defined as symbols instead of as the instance variables themselves (ex. :name instead of @name). I'm hoping this will become clearer with more practice.

=end