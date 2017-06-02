defmodule Integrate do
  @doc """
  Integrate function over the range

  ## Example:
      iex> integrate(&(2 * :math.pow(&1, 2)), 0, 1, 0.00001) |> Float.round(6)
      0.666677
  """
  def integrate(f, x, x_max, dx), do: integrate(f, x, x_max, dx, 0)
  def integrate(_, x, xmax, _, acc) when x >= xmax, do: acc
  def integrate(f, x, xmax, dx, acc), do: integrate(f, x + dx, xmax, dx, acc + f.(x) * dx)
end
