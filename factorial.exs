defmodule Factorial do
  def of(0), do: 1
  def of(n, acc \\ 1)
  def of(0, acc), do: acc
  def of(n, acc), do: of(n - 1, acc * n)
end
