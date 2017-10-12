defmodule Heroroot do
  def int_rac(n, x), do: int_rac(n, x, 1)
  defp int_rac(n, x, acc) do
    nx = (x + (n / x)) / 2
    if abs(x - nx) < 1 do
      acc
    else
      int_rac(n, nx, acc + 1)
    end
  end
end
