defmodule Handsonstring do
  @moduledoc """
  String administration for the hands-on.
  """

  @doc """
   ## String basic operations
  Build a function for converting a string in its binary mode
  """

  def binary(vall) do
    vall <> <<0>>
  end

 @doc """
   ## String basic operations
  Build a module to sort a string. If you have a lot of 
  functions to apply, you can use the pipe operator |> .
  You should: convert the string to downcase, split the string into
  graphemes to sort those graphemes.

  """

  def sort(string) do
  	string |> String.downcase() |> String.graphemes() |> Enum.sort() |> to_string
  end

  def anagram(string1,string2) do
  	sort(string1)==sort(string2)
  end

end
