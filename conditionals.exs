defmodule Conditionals do
  def main do
    run()
  end

  def run do
    score = 15

    if score > 10 do
      IO.puts "You did well"
    else
      IO.puts "You should train more"
    end

    unless score === 15 do
      IO.puts "You did not get 15 points"
    else
      IO.puts "You have exactly 15 points"
    end

    cond do
      score <= 5 -> IO.puts "You shall not pass!"
      score <= 10 -> IO.puts "Study more next time"
      score <= 15 -> IO.puts "Almost great"
      score <= 20 -> IO.puts "Good job"
      true -> IO.puts "Default result"
    end

    choice = 3
    case choice do
      1 -> IO.puts "You choose 1"
      2 -> IO.puts "You choose 2"
      3 -> IO.puts "You choose 3"
      _ -> IO.puts "You choose something else"
    end

    IO.puts "Ternary operator: #{if choice === 3, do: "Good choice", else: "You loose"}"
  end
end
