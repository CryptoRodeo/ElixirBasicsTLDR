#manipulating lists
list = [1,2,3]
con_list = list ++ [4,5,6]

IO.inspect con_list, label: "Concatenated list: "

min_list = con_list -- [4,5,6]
IO.inspect min_list, label: "Subtracted list: "


#String concatenation <>

hello = "hello"
hello_world = hello <> " world"

IO.puts hello_world

#boolean operators: or, and, not

IO.inspect true and true

IO.inspect true or false

IO.inspect not false

IO.inspect is_atom(:im_an_atom)

# There is also: ||, &&, ==, >=, >,!=, ===, vice versa and all that

#elixir also lets you compare different data types

IO.inspect 1 < :atom
