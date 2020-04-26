#Elixir has 2 main associative data structures: keyword lists and maps
#
#Keyword List
# In elixir we have a  list of tuples
# # The first item (the key) is an atom

list = [{:donut, "yes"}, {:salad, "no"}]

#Elixir supports the syntax [key: value] for defining keyword lists
other_list = [donut: "yes", salad: "still no"]

#underneath this syntax it maps it to the same structure as the list on number 6

#operations

#since keyword list are lists, the operations available for lists are also available to them
#
#adding new values to the list
IO.inspect other_list ++ [protien_bar: "sure!"]

#Keyword lists are important because of these 3 characteristics
#Keys must be atoms
#keys are ordered by the developer
#keys can be given more than once
#
#
#remember: Keyword lists are lists. So their performance is linear
#
#The longer the list, the longer it takes to:
#get the _length_ of the list
#find a key in the list
#
#For this reason, keyword lists are mainly used for passing optional values
#
#MAPS:
#
