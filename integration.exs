defmodule Integrate do
  @doc """
  Integrate function over the range

  ## Example:
      iex> integrate(&(2 * :math.pow(&1, 2)), 0, 1, 0.00001) |> Float.round(6)
      0.666677
  """
  def integrate(_, x, xmax, _) when x >= xmax, do: 0
  def integrate(f, x, xmax, dx), do: f.(x) * dx + integrate(f, x + dx, xmax, dx)
end
