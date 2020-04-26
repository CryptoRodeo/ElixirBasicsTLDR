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
# Whenever you need a key-value store, use maps!

diet = %{
  :donut => "mmm...donuts",
  :soda  => "diet coke please"
}

IO.puts diet[:donut]

#maps allow any value as a key and do not follow any ordering.
#
#Updating map values:
#
#Note: A key has to exist. This can not be used for adding values to the map.

real_diet = %{diet | :donut => "Actually i'll have a salad"}

IO.puts real_diet[:donut]

#atom keys can also be accessed using the . operator

IO.puts real_diet.soda


#Nested Data Structures
#You can have maps inside maps, keyword lists inside maps and etcetera.

#Here is a keyword list of users where each value is a map containing their:
#name, age, and programming languages they like.
users = [
  john: %{name: "John", age: 25, languages: ["C#","Ruby","Elixir"]},
  ben: %{name: "Ben", age: 28, languages: ["F#", "Ruby", "C++"]}
]

#To access john's age we can do
IO.puts users[:john].age

#We can also use the above syntax to update values using the put_in macro

users = put_in users[:john].age, 26 #happy birthday

IO.puts users[:john].age

#We can also use the update_in macro, this allows us to pass in a function
#that controls how the values change

users = update_in users[:ben].languages, fn languages ->
  List.delete(languages, "F#")
end

IO.inspect users[:ben].languages
