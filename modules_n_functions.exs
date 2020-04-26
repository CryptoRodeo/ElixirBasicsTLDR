#in order to create a module in elixir we use the defmodule macro
#this macro defines functions in that module
#
defmodule HomerSimpson do
  def eat(food) do
    if food == "donut" do
      IO.puts "mmm...donut"
    else
      IO.puts "Doh!"
    end
  end
end

HomerSimpson.eat("donut")
HomerSimpson.eat("salad")
