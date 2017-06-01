defmodule FizzBuzz do
  def to(n) when n > 0, do: 1..n |> Enum.map(&(check(rem(&1, 3), rem(&1, 5), &1)))

  defp check(0, 0, _), do: "FizzBuzz"
  defp check(0, _, _), do: "Fizz"
  defp check(_, 0, _), do: "Buzz"
  defp check(_, _, n), do: n
end
