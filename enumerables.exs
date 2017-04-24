defmodule Enumerables do
  def main do
    run()
  end

  def run do
    IO.puts "All even? #{Enum.all?([4, 2, 7], fn n -> rem(n, 2) === 0 end)}"
    IO.puts "All even? #{Enum.all?([4, 2, 7], &(rem(&1, 2) === 0))}"
    IO.puts "Any even? #{Enum.any?([4, 2, 7], fn n -> rem(n, 2) === 0 end)}"
    IO.puts "All even? #{Enum.any?([4, 2, 7], &(rem(&1, 2) === 0))}"

    # print square list elements
    Enum.each([1, 2, 3, 4], fn n -> IO.puts round :math.pow n, 2 end)
    Enum.each([1, 2, 3, 4], &(IO.puts round :math.pow &1, 2))

    # create list of squares
    IO.inspect Enum.map([1, 2, 3, 4], fn n -> round :math.pow n, 2 end)
    IO.inspect Enum.map([1, 2, 3, 4], &(round :math.pow &1, 2))

    # product of numbers
    IO.puts Enum.reduce([3, 5, 7], fn n, prod -> n * prod end)
    IO.puts Enum.reduce([3, 5, 7], &(&1 * &2))

    # unique elements
    IO.inspect Enum.uniq [1, 1, 3, 3, 3, 6, 6, 6, 6, ]
    
  end
end
