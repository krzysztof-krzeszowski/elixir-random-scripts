defmodule Primes do
  def to(n) do
    Enum.into(2..n, []) -- ((for i <- 2..n, j <- 2..i, do: i * j) |> Enum.sort)
  end
end
