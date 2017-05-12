defmodule Attendee do
  defstruct name: "", paid: false, over_18: true

  def may_attend_afterparty(a = %Attendee{}), do: a.paid && a.over_18
  def print_badge(%Attendee{name: name}) when name != "", do: IO.puts "Very cheap badge for #{name}!"
  def print_badge(%Attendee{}), do: IO.puts "Missing name for a badge"
end
