defmodule HandsonforTest do
  use ExUnit.Case

  test "basic for comprehensions. Adding one" do
    result = Handsonfor.addOne([1,2,3])
    assert [2,3,4] == result
  end


  test "basic for comprehensions. two generated list, same size" do
    result = Handsonfor.addLists(3,3)
    assert [1,2,3,2,4,6,3,6,9] == result
  end


  test "basic for comprehensions. finding multiples" do
    result = Handsonfor.findMultiples(10,2)
    assert [4,6,8,10] == result
  end


  test "generating list of cards" do
    suits = [:clubs, :diamonds, :hearts, :spades]
    ranks = [2, 3, 4, 5, 6, 7, 8, 9, 10, :jack, :queen, :king, :ace]
    result = Handsonfor.generateListCombination(suits,ranks)
    assert  [
        {2, :clubs},
        {3, :clubs},
        {4, :clubs},
        {5, :clubs},
        {6, :clubs},
        {7, :clubs},
        {8, :clubs},
        {9, :clubs},
        {10, :clubs},
        {:jack, :clubs},
        {:queen, :clubs},
        {:king, :clubs},
        {:ace, :clubs},
        {2, :diamonds},
        {3, :diamonds},
        {4, :diamonds},
        {5, :diamonds},
        {6, :diamonds},
        {7, :diamonds},
        {8, :diamonds},
        {9, :diamonds},
        {10, :diamonds},
        {:jack, :diamonds},
        {:queen, :diamonds},
        {:king, :diamonds},
        {:ace, :diamonds},
        {2, :hearts},
        {3, :hearts},
        {4, :hearts},
        {5, :hearts},
        {6, :hearts},
        {7, :hearts},
        {8, :hearts},
        {9, :hearts},
        {10, :hearts},
        {:jack, :hearts},
        {:queen, :hearts},
        {:king, :hearts},
        {:ace, :hearts},
        {2, :spades},
        {3, :spades},
        {4, :spades},
        {5, :spades},
        {6, :spades},
        {7, :spades},
        {8, :spades},
        {9, :spades},
        {10, :spades},
        {:jack, :spades},
        {:queen, :spades},
        {:king, :spades},
        {:ace, :spades}
      ] == result
  	end

   test "calculating price of a shopping car" do
   	 prices = [ chocolate: 1.80, milk: 4.00 , bread: 1.00]
   	 car = [
   	 	[milk:  2],
   	 	[bread: 4],
   	 	[chocolate: 1]
   	 ]
   	 result = Handsonfor.computePrice(prices,car)
   	 assert 13.80 = result

   end

end