defmodule Handsonfor do
  @moduledoc """
  for and list handling for the hands-on.
  """

  @doc """
   ## list basic operations
  Build a function for adding 1 to each element of a list. 
  see comprehensions https://elixir-lang.org/getting-started/comprehensions.html
  """

  def addOne(list) do
    for x <- list, do: x + 1
  end


  @doc """
   ## list basic operations
  Build a function taking 2 integers generating lists from 1 to the integer value, and multiplying the values of both lists.
  see comprehensions https://elixir-lang.org/getting-started/comprehensions.html
  """

  def addLists(num1, num2) do
    for x <- 1..num1, y <- 1..num2, do: x * y
  end

   @doc """
   ## list basic operations
  Build a function taking 2 integers generating one list from 1 to the integer 1 value, finding number multiples of the second number. Return all elements exept the first one.
  see comprehensions https://elixir-lang.org/getting-started/comprehensions.html
  """

  def findMultiples(num1, num2) do
    multiple_of_n? = fn(n) -> rem(n, num2) == 0 end
    [h|t]=for x <- 1..num1, multiple_of_n?.(x) , do: x
    t
  end


  @doc """
   ## list basic operations
  Build a function taking 2  lists find all combinations of lists and return a map with the result.
  see comprehensions https://elixir-lang.org/getting-started/comprehensions.html
  """

  def generateListCombination(list1, list2) do
    for suit <- list1,
          rank <- list2,
          do: {rank, suit}
  end


  @doc """
   ## list basic operations
  Build a function to calculate the price of a shopping cart.
  see comprehensions https://elixir-lang.org/getting-started/comprehensions.html
  see also Enum to calculate the sum of an array https://elixir-examples.github.io/examples/sum-an-enumerable
  """

  def computePrice(prices, cart) do
    pr = for item <- cart, 
      {item_name, quant} <- item, # generator
      (item_name in Keyword.keys prices), # filter
      {name, price} <- prices, # generator 
      item_name == name, # filter
      do:  price * quant
    Enum.sum(pr)
  end


end