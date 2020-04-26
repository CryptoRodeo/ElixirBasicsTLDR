#Charlists
#
#A charlist is a list of integers where all the integers are valid code points

hello = 'hełło'

IO.inspect to_charlist hello #you can convert a single string charlist literal into a charlist

least_favorite_animal = [99,97,116]

IO.inspect to_string least_favorite_animal #and vice versa
