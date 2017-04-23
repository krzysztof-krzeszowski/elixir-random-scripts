defmodule AnonymousFunctions do
  def main do
    run()
  end

  def run do
    double = fn x -> 2 * x end
    IO.puts double.(4)

    # shorthand &1, &2, &3, ... are agruments
    pytagorean = &(:math.sqrt(:math.pow(&1, 2) + :math.pow(&2, 2)))
    IO.puts pytagorean.(3, 4)

    # same function for different number of arguments
    area = fn
      {x} -> :math.pow x, 2
      {x, y} -> x * y
    end
    IO.puts "Area of square with side equal 2 is #{area.({2})}"
    IO.puts "Area of 3 by 4 rectangle is #{area.({3, 4})}"

  end
end
