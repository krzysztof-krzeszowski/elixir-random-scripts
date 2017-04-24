defmodule ListComprehension do
  def main do
    run()
  end

  def run do
  # print elements [for, do]
  for el <- [1, 2, 3], do: IO.puts el

  # list of squares [for, do]
  squares = for el <- [1, 2, 3, 4], do: round :math.pow el, 2
  IO.inspect squares

  # select even numbers [for, condition, do]
  even = for el <- [5, 2, 6, 9, 7, 4, 8], rem(el, 2) === 0, do: el
  IO.inspect even
  end
end
