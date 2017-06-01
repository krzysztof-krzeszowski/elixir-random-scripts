defmodule Anagram do
  def check(w1, w2), do: (w1 |> String.graphemes |> Enum.sort) == (w2 |> String.graphemes |> Enum.sort)
end
