defmodule Monitor do
  import :timer, only: [ sleep: 1 ]
  
  def sad_function do
    sleep 500
    exit(:died)
  end

  def run do
    res = spawn_monitor(Monitor, :sad_function, [])
    IO.inspect res
    receive do
      msg ->
        IO.puts "message: #{inspect msg}"
      after 1000 ->
        IO.puts "emptiness..."
    end
  end
end

Monitor.run
