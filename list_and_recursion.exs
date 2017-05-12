defmodule ListAndRecursion do
  def all?(_, _, acc \\ true)
  def all?([], _, acc), do: acc
  def all?(_, _, false), do: false
  def all?([h | t], f, true), do: all?(t, f, f.(h))

  def flatten(_, acc \\ [])
  def flatten([l], acc), do: flatten(l, acc)
  def flatten([h | t], acc), do: flatten(t, acc ++ flatten(h))
  def flatten(l, acc), do: acc ++ [l]
end
