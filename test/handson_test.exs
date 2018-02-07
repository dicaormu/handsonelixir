defmodule HandsonTest do
  use ExUnit.Case
  import ExUnit.CaptureIO
  import ExUnit.CaptureLog

  doctest Handson

  test "greets the world" do
    capture_log(fn -> IO.puts(Handson.hello()) end)
    assert capture_io(fn -> IO.puts(Handson.hello()) end) == "world\n"
  end
end
