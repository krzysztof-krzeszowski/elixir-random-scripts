if !System.get_env("EXERCISM_TEST_EXAMPLES") do
  Code.load_file("heroroot.exs", __DIR__)
end

ExUnit.start
defmodule HerorootTest do
  
  use ExUnit.Case
  
  defp testing(numtest, n, guess, ans) do 
    IO.puts("Test #{numtest} \n")
    assert Heroroot.int_rac(n, guess) == ans
  end
  test "int_rac" do 
    testing(1, 25, 1, 4)
    testing(2 ,125348, 300, 3)
  end
end

