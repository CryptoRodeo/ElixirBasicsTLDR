#basic integers
IO.puts 1 + 2

#floats
IO.puts 5 / 2

#booleans
IO.puts true == false

#nil
IO.puts nil

#atoms aka symbols aka constants
IO.puts :apple

#strings
IO.puts "Ruby-i mean- Elixir is great!"

#Single quotes are charlists, double quotes are strings.
IO.puts 'hello' == "hello"

# anonymous functions
#store and pass executable code around!
#delimited by fn and end
# Note that a dot (.) between the variable and parentheses is required to invoke an anonymous function.
# The dot ensures there is no ambiguity between calling the anonymous function matched to a variable add and a named function add/2

add = fn a,b -> a + b end
IO.puts add.(1,2)

#anonymous functions are also closures
#They have access to variables that are in scope when the function is defined.
double = fn a -> add.(a,a) end

IO.puts double.(9)


#LinkedList
[1,2,3,true,false,4,5,6]

#Lists can be concatenated
list=[1,2,3]
list = list ++ [4,5,6]

IO.inspect list, label: "This is a concatenated list: "

#lists can also be subtracted from
list = list -- [4,5,6]
IO.inspect list, label: "This is a subtracted list: "

#NOTE
#List operators never modify the existing list. Concatenating to or removing elements from a list returns a new list.

#Lists are also stored as linked lists

#This means that accessing accessing the length of the list is a linear operation

#We need to traverse the whole list in order to figure out its size...


#In elixir data structures are immutable.

#Getting the head and tail of a list
IO.inspect hd(list), label: "The head of the list: "

IO.inspect tl(list), label: "The tail of the list: "

#Tuple
#Tuples store elements contiguously in memory.
#This means accessing a tuple element by index or getting the tuple size is a fast operation
#tuple indexes start at 0

IO.inspect {:hello, :world}, label: "Tuple: "

#You can insert elements at a particular index using put_elem

#put_elem doesnt modify the original tuple, it returns a new one

#updating a tuple is expensive though because it requires creating a new tuple in memory

tup = {:hello, :world}
new_tup = put_elem(tup, 0, :goodbye)
IO.inspect new_tup, label: "New Tuple: "


#When counting the elements in a data structure Elixir has 1 rule:
#use the function size if the operation is constant time
#use the function length if the operation is linear
#as a mnemonic, length and linear both start with 'l'
