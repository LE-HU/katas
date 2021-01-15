# You probably know the "like" system from Facebook and other pages. People can "like" blog posts, pictures or other items. We want to create the text that should be displayed next to such an item.

# Implement a function likes :: [String] -> String, which must take in input array, containing the names of people who like an item. It must return the display text as shown in the examples:

# likes [] -- must be "no one likes this"
# likes ["Peter"] -- must be "Peter likes this"
# likes ["Jacob", "Alex"] -- must be "Jacob and Alex like this"
# likes ["Max", "John", "Mark"] -- must be "Max, John and Mark like this"
# likes ["Alex", "Jacob", "Mark", "Max"] -- must be "Alex, Jacob and 2 others like this"

# For 4 or more names, the number in and 2 others simply increases.
# ------------------------------

people0 = []
people1 = ['Alex']
people2 = %w[Alex Jacob]
people3 = %w[Alex Jacob Mark]
people4 = %w[Alex Jacob Mark Max]

def likes(names)
  return 'no one likes this' if names.empty?
  return "#{names[0]} likes this" if names.one?
  return "#{names[0]} and #{names[1]} like this" if names.size == 2
  return "#{names[0]}, #{names[1]} and #{names[2]} like this" if names.size == 3
  return "#{names[0]}, #{names[1]} and #{names.size - 2} others like this" if names.size > 3
end

# other solutions:
