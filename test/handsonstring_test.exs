defmodule HandsonstringTest do
  use ExUnit.Case
  import ExUnit.CaptureIO
  import ExUnit.CaptureLog

  doctest Handsonstring

  test "get ascii codes" do
    assert Handsonstring.binary("hello") == <<104, 101, 108, 108, 111, 0>>
  end

  test "sort string" do
  	assert Handsonstring.sort("hola") == "ahlo"
  end

  test "test if empty strings are anagrams" do
  	assert Handsonstring.anagram("","") 
  end


  test "test if same strings are anagrams" do
  	assert Handsonstring.anagram("casser","Casser") 
  end

  test "test if strings are anagrams true" do
  	assert Handsonstring.anagram("Marion","manoir") 
  end

  test "test  strings are not anagrams" do
  	refute Handsonstring.anagram("MALE","moche") 
  end
end
