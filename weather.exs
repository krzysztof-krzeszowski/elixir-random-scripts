defmodule WeatherHistory do
  def test_data do
    [
      [1366225622, 26, 15, 0.125],
      [1366225622, 27, 15, 0.45],
      [1366225622, 28, 21, 0.25],
      [1366229222, 26, 19, 0.081],
      [1366229222, 27, 17, 0.468],
      [1366229222, 28, 15, 0.6],
      [1366232822, 26, 22, 0.095],
      [1366232822, 27, 21, 0.05],
      [1366232822, 28, 24, 0.03],
      [1366236422, 26, 17, 0.025]
    ]
  end

  def for_location_27([]), do: []
  def for_location_27([[time, 27, temp, rain] | t]) do
    [[time, 27, temp, rain] | for_location_27(t)]
  end
  def for_location_27([_ | t]), do: for_location_27(t)

  def for_location([], _loc), do: []
  def for_location([h = [_, loc, _, _] | t], loc) do
    [h | for_location(t, loc)]
  end
  def for_location([_ | t], loc), do: for_location(t, loc)
end

