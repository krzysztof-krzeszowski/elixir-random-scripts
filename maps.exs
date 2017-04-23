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
  end
end
