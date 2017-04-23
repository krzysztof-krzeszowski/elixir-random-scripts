defmodule Tuples do
  def main do
    run()
  end

  def run do
    results = {:ok, 200, 1.2}

    IO.puts "Is tuple? #{is_tuple results}"

    # append returns a new tuple
    results = Tuple.append(results, -4)
    IO.inspect results
    IO.inspect results

    # get element, 0 based indexing
    IO.puts elem(results, 2)
    
    IO.puts "Tuple has #{tuple_size results} elements"

    # remove element returns a new tuple
    results = Tuple.delete_at(results, 1)
    IO.inspect results

    # insert element returns a new tuple
    results = Tuple.insert_at(results, 0, 42)
    IO.inspect results

    approval = Tuple.duplicate(:yes, 3)
    IO.inspect approval

    # pattern matching
    {title, year, rating, number_of_votes} = {"It", 1990, 6.9, 73928}
    IO.puts "Rating of #{title} (#{year}) is #{rating} based on #{number_of_votes} votes"
  end
end
