defmodule DataTypes do
  def main do
    test_integer()
    test_float()
    test_atom()
    range()
  end

  def range do
    from_one_to_ten = 1..10
  end

  def test_atom do
    IO.puts "Test atom"
    IO.puts "Is atom? #{is_atom :atom}"
    IO.puts "Is atom? #{is_atom 1.23}"
    IO.puts "Is atom with spaces? #{is_atom :"lorem ipsum"}"
  end

  def test_float do
    IO.puts "Test float"
    my_float = 3.14
    IO.puts "Is float? #{is_float my_float}"
    IO.puts "Is integer? #{is_integer my_float}"
  end

  def test_integer do
    IO.puts "Test integer"
    my_int = 42
    IO.puts "Is integer? #{is_integer my_int}"
  end
end
