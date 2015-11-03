# Pseudocode
# Input:

# List of names - people in cohort

# Output:

# Groups of 4 or 5 (at least 3)

# Split up names within list into groups of 5
# If the remainder is less than 3, need to groups of 3 or 4 for remaining groups

# Initial solution
def create_groups(list_of_names)
  require "enumerator"
  list_of_names.enum_for(:each_slice, 5).to_a
end

# Refactored solution
def create_groups(list_of_names)
  require "enumerator"
  list_of_names.enum_for(:each_slice, 5).to_a
  if list_of_names.length % 5 == 1 || list_of_names.length % 5 == 2
    list_of_names.enum_for(:each_slice, 5).to_a.flatten[0..1]
  end
end

island_foxes = ["Alan Alcesto", "Daniel Andersen", "James Artz", "Darius Atmar", "Brian Bensch", "Nicola Beuscher", "Kris Bies", "Alex Blair", "Logan Bresnahan", "William Brinkert", "Un Choi", "Scott Chou", "Bernice Anne W Chua","Abraham Clark", "Jon Clayton", "Kevin Corso", "Jacob Crofts", "Amaar Fazlani", "Solomon Fernandez", "Edward Gemson", "Jamar Gibbs", "Chris Gomes", "Will Granger", "Christopher M. Guard", "Ryan Ho", "Igor Kazimirov", "Walter Kerr", "Karla King", "Becky Lehmann", "Malia Lehrer", "Carolina Medellin", "Timothy Meixell", "Chris Miklius", "Joshua Monzon", "Shea Munion", "Bryan Munroe", "Trevor Newcomb", "Aleksandra Nowak", "Fatma Ocal", "Van Phan", "Luis Fernando Plaz", "Natalie Polen", "Alicia Quezada", "Jessie Richardson", "Nimi Samocha", "Zach Schatz", "Tal Schwartz", "Pratik Shah", "Josh Shin", "Shawn Spears", "Sasha Tailor", "Nil Thacker", "Natasha Thapliyal", "Sabrina Unrein", "Brian Wagner", "Clinton Weber", "Gregory Wehmeier", "Michael Whelpley", "Peter N Wood", "Ryan Zell"]

p create_groups(island_foxes)


=begin
What was the most interesting and most difficult part of this challenge?
Using my experience from the comma separated challenge, I was able to figure out pretty quickly how to divide the array of names into groups of five. The most difficult part of the challenge was determining what to do when there was a remainder of one or two names. In my refactored solution, I accounted for this with an IF statement, specifying if there was a remainder of one or two (need groups of at least 3), to "flatten" (basically combine into an array) the first two subarrays.

Do you feel you are improving in your ability to write pseudocode and break the problem down?

Yes, although I do find that my mind still jumps straight to the code. I'm learning to be more patient, finding that writing the pseudocode first really does help me to think through the problem. It certainly helped in this case to identify situations when creating groups of five would leave a group of two or one.

Was your approach for automating this task a good solution? What could have made it even better?

I feel like I could have taken this much further, to be honest. I would have liked to randomize it a bit, rather than just divide the array into subarrays of groups of 3-5 people. It certainly automates the task, but I feel like I could've added more value and complexity.

What data structure did you decide to store the accountability groups in and why?

I decided to store the groups in an array. Since I couldn't think of logical key/value pairs for the list (which might necessitate a hash), it seemed most straightforward to store the name values in an array. Also, I was then able to access the values through numerical index when there was a remainder of one or two people.

What did you learn in the process of refactoring your initial solution? Did you learn any new Ruby methods?

I learned about the "flatten" method. I had read about it previously in our Ruby text book, but had primarily used join to combine arrays and strings. I found flatten to be especially helpful because it allowed to combine values by numerical index while keeping them in an array. I was not able to achieve this through methods like "concat."

=end