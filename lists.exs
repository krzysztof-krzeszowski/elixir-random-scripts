defmodule Lists do
  def main do
    run()
  end

  def run do
    list_1 = [1, 2, 3, 4, 5]
    list_2 = [6, 7, 8, 9, 0]

    # join lists
    IO.inspect list_1 ++ list_2

    # subtract list
    list = [1, 2, 3, 4, 7, 9] -- [3, 1, 2, 5]
    IO.inspect list

    # check if element is in list
    IO.puts "Is 3 in list?: #{3 in [4, 5, 8, 1]}"

    # heads is the first element, tail is the rest
    [head | tail] = [3, 4, 5, 6]
    IO.puts "Head of the list: #{head}"
    IO.write "Tail of the list: "
    IO.inspect tail

    # printing list of number will output corresponding characters
    list = [97, 98, 99, 100]
    IO.inspect list
    IO.inspect list, char_lists: :as_lists

    # enumerate over items
    Enum.each list, fn item ->
      IO.puts "Next item: #{item}"
    end

    list = ["Lorem", "ipsum", "dolor", "sit", "amet"]
    Enum.each list, fn word -> 
      word
      |> String.upcase 
      |> IO.puts
    end

    # use recursion to print words from list
    recursive_print list

    # remove element from list
    recursive_print List.delete(list, "ipsum")
    recursive_print List.delete_at(list, 0)

    # insert element
    recursive_print List.insert_at list, 0, "Elit"

    # print first/last element
    IO.puts List.first list

    IO.puts List.last list

    # key: value pair list
    pairs = [title: "It", year: 1990]
    IO.inspect pairs
  end
  
  def recursive_print([h | t]) do
    IO.puts h
    recursive_print(t)
  end

  # define function for empty list to end recursion
  def recursive_print([]), do: nil
end

