defmodule SimpleMath do
  def main do
    run_math()
  end

  def run_math do
    IO.puts "7 + 4 = #{7 + 4}"
    IO.puts "7 - 4 = #{7 - 4}"
    IO.puts "7 * 4 = #{7 * 4}"
    IO.puts "7 / 4 = #{7 / 4}"
    IO.puts "integer division 7 / 4 = #{div 7, 4}"
    IO.puts "reminder of 7 / 4 = #{rem 7, 4}"
    IO.puts "|4 - 7| = #{abs 4 - 7}"
    IO.puts "round 3.14 = #{round 3.14}"
    IO.puts "round 2.72 = #{round 2.72}"
    IO.puts "truncate 4.95 = #{trunc 4.95}"
    IO.puts "2 to the power of 3 = #{:math.pow 2, 3}"
  end
end
