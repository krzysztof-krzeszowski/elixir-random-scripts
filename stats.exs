defmodule Stats do
  def sum(vals), do: vals |> Enum.reduce(0, &+/2)
  def count(vals), do: vals |> Enum.reduce(0, fn _, acc -> acc + 1 end)
  def mean(vals), do: sum(vals) / count(vals)
end
