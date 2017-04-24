defmodule Recursion do
  def main do
    run()
  end

  def run do
    IO.puts "Factorial of 7 is #{factorial 7}"
    IO.puts "12th element of Fibonacci sequence is #{fibonacci 12}"

    # recursion used as loop
    IO.puts "Sum of list: #{sum [1, 7, 3, 9]}"
    counter(10, 1)
  end

  def counter(val, min) do
    if val < min do
      nil
    else
      IO.puts val
      counter(val - 1, min)
    end
  end

  def factorial(val) do
    if val <= 1 do
      1
    else
      val * factorial val - 1
    end
  end

  def fibonacci n do
    cond do
      n == 1 -> 1
      n == 2 -> 1
      true -> fibonacci(n - 1) + fibonacci(n - 2)
    end
  end

  def sum([]), do: 0
  def sum([h | t]), do: h + sum(t)
end
