# U2.W6: Testing Assert Statements

# I worked on this challenge Kevin Corso.


# 2. Review the simple assert statement

# def assert
#   raise "Assertion failed!" unless yield
# end

# name = "bettysue"
# assert { name == "bettysue" }
# assert { name == "billybob" }

# 2. Pseudocode what happens when the code above runs
# In driver code, setting name equal to "bettysue"
# Both assert statements set up a block, which are called by yield in the code
# First assert passes because block is TRUE
# Second assert fails because block is FALSE


# 3. Copy your selected challenge here

def separate_comma(num)
  str_num = num.to_s.reverse

  if str_num.length < 4
    return str_num.reverse
  else
    i = 3
    while i < str_num.length
      str_num.insert(i, ',')
      i += 4
    end
  end
  return str_num.reverse
end

# def separate_comma(integer)
#   require "enumerator"
#   integer.to_s.split(//).reverse.enum_for(:each_slice, 3).to_a.map(&:join).join(",").reverse
# end

# 4. Convert your driver test code from that challenge into Assert Statements

def assert
  raise "Assertion failed!" unless yield
end

test_1 = "1,204"
assert { test_1 == separate_comma(1204)}
test_2 = "1,456,789"
assert { test_2 == separate_comma(1456789)}
test_3 = "678"
assert { test_3 == separate_comma(678)}
test_4 = "1,234,546,879,654,321"
assert { test_4 == separate_comma(1234546879654321)}

# 5. Reflection
=begin
What concepts did you review in this challenge?

My partner and I learned about assert statements in this challenge. While
they're different from RSpec files, it did provide a good "kickstart" to the
idea of testing code (TDD).

What is still confusing to you about Ruby?

I still don't understand RSpec files. We weren't required to work with them
in this challenge, but I'm sure we will write them in Phases 1-3 of DBC, so
I'd like to start learning about them.

What are you going to study to get more prepared for Phase 1?

I will complete more ruby review files, especially the more advanced
applications. I may also try to understand things we haven't covered,
like RegEx and RSpec files.

=end