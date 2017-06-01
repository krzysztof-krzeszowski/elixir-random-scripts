defmodule Chop do
  def guess(a, min..max, a), do: "It is #{a}"
  def guess(a, min..max) when a < min or a > max, do: "Number out of range"
  def guess(a, min..max) when a == div(max - min, 2), do: "It is #{a}"
end
