defmodule PatternMatching do
  def main do
    run()
  end

  def run do
    [price, amount] = [4.99, 10]
    IO.puts "Buy #{amount} items for $#{price} each"

    # _ is used as dummy variable
    [[_, a], [_, _]] = [[1, 2], [3, 4]]
    IO.puts a
  end
end
