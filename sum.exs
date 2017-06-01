defmodule Sum do
  def of(n, acc \\ 0)
  def of(0, acc), do: acc
  def of(n, acc), do: of(n - 1, acc + n)
end
