defmodule Maps do
  def main do
    run()
  end

  def run do
    movies = %{"Cameron" => "Aliens", 
                "Nolan" => "Inception",
                "Kubrick" => "The Shining"}

    IO.puts "Cameron is the director of #{movies["Cameron"]}"

    # use atoms as keys (must be lowercase)
    movies = %{cameron: "Aliens",
                nolan: "Inception",
                kubrick: "The Shining"}

    IO.puts "Kubrick is the director of #{movies.kubrick}"

    # add new key: value pair
    movies = Map.put_new movies, :tarantino, "Pulp Fiction"
    IO.inspect movies 

    # create map from two lists
    l1 = ["a", "b", "c", "d"]
    l2 = [1, 2, 3, 4]
    l3 = Enum.zip(l1, l2) |> Enum.into(%{})
    IO.inspect l3
  end
end
