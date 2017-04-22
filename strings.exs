defmodule MyStrings do
  def main do
    fun()
  end

  def fun do
    str = "Lorem ipsum"
    IO.puts "Length: #{String.length str}"
    
    # concatenate strings
    str_2 = str <> " " <> "dolor sit amet"
    IO.puts str_2

    # compare strings (== -> value, === -> value and type
    IO.puts "Equal: #{"Lorem" === "ipsum"}"

    # check if substring
    IO.puts "Contains: #{String.contains? str_2, "dolor"}"

    # print first character
    IO.puts String.first str

    # character at position (index, starting from 0)
    IO.puts "Character number 5 #{String.at str, 4}"

    # get substring
    IO.puts "Substring: #{String.slice str, 6, 5}"

    # split string
    IO.inspect String.split str_2, " "

    # reverse string
    IO.puts String.reverse str_2

    # change to uppercase
    IO.puts String.upcase str

    # change to lowercase
    IO.puts String.downcase "LOL"

    # capitalize the first character
    IO.puts String.capitalize "hELLO"
  end
end
