# Pseudocode
# Input:

# List of names - people in cohort

# Output:

# Groups of 4 or 5 (at least 3)

# Split up names within list into groups of 5
# If the remainder is less than 3, need to groups of 3 or 4 for remaining groups


def create_groups(list_of_names)
  require "enumerator"
  list_of_names.enum_for(:each_slice, 5).to_a
  if list_of_names.length % 5 == 1 || list_of_names.length % 5 == 2
    list_of_names.enum_for(:each_slice, 5).to_a
    list_of_names[-1..-2].join
  end
end

island_foxes = ["Alan Alcesto", "Daniel Andersen", "James Artz", "Darius Atmar", "Brian Bensch", "Nicola Beuscher", "Kris Bies", "Alex Blair", "Logan Bresnahan", "William Brinkert", "Un Choi", "Scott Chou", "Bernice Anne W Chua","Abraham Clark", "Jon Clayton", "Kevin Corso", "Jacob Crofts", "Amaar Fazlani", "Solomon Fernandez", "Edward Gemson", "Jamar Gibbs", "Chris Gomes", "Will Granger", "Christopher M. Guard", "Ryan Ho", "Igor Kazimirov", "Walter Kerr", "Karla King", "Becky Lehmann", "Malia Lehrer", "Carolina Medellin", "Timothy Meixell", "Chris Miklius", "Joshua Monzon", "Shea Munion", "Bryan Munroe", "Trevor Newcomb", "Aleksandra Nowak", "Fatma Ocal", "Van Phan", "Luis Fernando Plaz", "Natalie Polen", "Alicia Quezada", "Jessie Richardson", "Nimi Samocha", "Zach Schatz", "Tal Schwartz", "Pratik Shah", "Josh Shin", "Shawn Spears", "Sasha Tailor", "Nil Thacker", "Natasha Thapliyal", "Sabrina Unrein", "Brian Wagner", "Clinton Weber", "Gregory Wehmeier", "Michael Whelpley", "Peter N Wood", "Ryan Zell", "Claire", "Debbie"]

p create_groups(island_foxes)
