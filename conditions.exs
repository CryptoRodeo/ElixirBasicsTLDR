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


#clauses
#Clauses also allow extra conditions to be specified via guards:

f = fn
  x, y when x > 0 -> x + y
  x,y -> x * y
 end

IO.puts f.(1,3)
IO.puts f.(-1,3)

#NOTE
#The number of arguments in each anonymous function clause needs to be the same, otherwise an error is raised.

#cond -> useful when matching against different values
# This checks against many conditions and returns the first one that doesn't evaluate to nil or false
hi_lo = fn
  x ->
    cond do
      x > 0 -> IO.puts "Positive" #if
      x < 0 -> IO.puts "Negative" #equivalent of an elsif
      x == 0 -> IO.puts "Zero"
      true -> "How!?" #equivalent of else
    end
end

hi_lo.(1)
hi_lo.(-1)
hi_lo.(0)

#if, else and unless

fight = fn
  weapon ->
  if weapon == "sword" do
    IO.puts "You defeat the dragon with your sword!"
  else
    IO.puts "This weapon is ineffective! The dragon slays you."
  end
end

fight.("sword")
fight.("pillow")

#using unless

fight = fn
  weapon ->
    unless weapon == "sword" do
      IO.puts "You are slain!"
    else
      IO.puts "You have slain Trogdor!"
    end
end

fight.("sword")
fight.("Homestar runner anyone?")


#using do, end
#Notice how the example above has a comma between true and do:,
#that’s because it is using Elixir’s regular syntax where each argument is separated by a comma.
#We say this syntax is using keyword lists. We can pass else using keywords too:


morning_drink = fn
  drink ->
   if drink == "coffee", do: (IO.puts "Cream and sugar then?"), else: IO.puts "Tea it is then. Green or black?"
end

morning_drink.("coffee")
morning_drink.("not coffee")
