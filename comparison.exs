defmodule Comparison do
  def main do
    run()
  end

  def run do
    # value and type equaliy
    IO.puts "2 == 2.0: #{2 == 2.0}"
    IO.puts "2 === 2.0: #{2 === 2.0}"
    IO.puts "2 != 2.0: #{2 != 2.0}"
    IO.puts "2 !== 2.0: #{2 !== 2.0}"

    # simple algebraic relation
    IO.puts "2 < 3: #{2 < 3}"
    IO.puts "2 <= 3: #{ 2 <= 3}"
    IO.puts "2 > 3: #{2 > 3}"
    IO.puts "2 >= 3: #{2 >= 3}"

    # and/or 
    IO.puts 3 > 2 and 4 < 1
    IO.puts 4 == 3 or 6 > 2

    # negation
    IO.puts not true
    IO.puts not (3 == 3.0)
    IO.puts not (1 > 2)
  end
end
