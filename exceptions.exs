defmodule Exceptions do
  def main do
    run()
  end

  def run do
    result = try do
      1 / 0
    rescue
      ArithmeticError -> "Division by zero"
    end
    IO.puts result
  end
end
