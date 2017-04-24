defmodule Concurrency do
  def main do
    run()
  end

  def run do
    # spawn three concurrent processes
    spawn(fn -> counter(1, 50) end)
    spawn(fn -> counter(50, 100) end)
    spawn(fn -> counter(100, 150) end)
  end

  def counter(0), do: nil
  def counter(min, max) do
    if min > max do
      counter(0)
    else
      IO.puts min
      counter(min + 1, max)
    end
  end
end
