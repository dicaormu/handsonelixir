defmodule HandsonechoTest do
  use ExUnit.Case

  alias Handsonecho, as: Echo 

  doctest Handsonecho

  test "greets the world using echo" do
     {:ok, pid} = Echo.start_link()
     Echo.send(pid, :hello)
     assert_receive :hello
     Echo.send(pid, :hi)
     assert_receive :hi
  end
end
