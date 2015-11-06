#Attr Methods

# I worked on this challenge [by myself, with:]

# I spent [#] hours on this challenge.

# Pseudocode

# Input:
# Output:
# Steps:

class NameData

end


class Greetings

end



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

=end