defmodule HandsonechoTimeoutTest do
  use ExUnit.Case

  alias Handsonechotime, as: EchoTme 

  doctest Handsonechotime

  test "greets the world using echo with a timeout" do
    {:ok, pid} = EchoTme.start_link()
    Process.sleep(50)
    assert false == Process.alive?(pid)
  end
end
