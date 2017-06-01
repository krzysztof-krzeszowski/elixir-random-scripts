defmodule MyList do
  def len(l, acc \\ 0)
  def len([], acc), do: acc
  def len([_ | t], acc), do: len(t, acc + 1)

  def square(l, acc \\ [])
  def square([], acc), do: acc
  def square([h | t], acc), do: square(t, acc ++ [h * h])

  def add_1(l, acc \\ [])
  def add_1([], acc), do: acc
  def add_1([h | t], acc), do: add_1(t, acc ++ [h + 1])

  def map(l, _, acc \\ [])
  def map([], _, acc), do: acc
  def map([h | t], fun, acc), do: map(t, fun, acc ++ [fun.(h)])

  def reduce([], acc, _), do: acc
  def reduce([h | t], acc, fun), do: reduce(t, fun.(h, acc), fun)

  def my_max(_, m \\ -99999999)
  def my_max([], m), do: m
  def my_max([h | t], m) when h <= m, do: my_max(t, m)
  def my_max([h | t], m) when h > m, do: my_max(t, h)
end
