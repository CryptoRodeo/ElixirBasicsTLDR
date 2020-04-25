#case statement
#case allows us to compare a value against many patterns until we find a matching one:

case {1,2,3} do
  {4,5,6} ->
    "This clause wont match"
  {1,x,3} ->
    "This clause will match and bind x to 2 in this clause"
  _ ->
    "This clause will match any value"
end

#to match a pattern against an existing variable use the ^ operator

x = 10

case 10 do
  ^x -> "Found a match!"
  _ -> "Will always match"
 end
