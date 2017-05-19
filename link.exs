defmodule Link do
  import :timer, only: [ sleep: 1 ]
  
  def sad_function do
    sleep 500
    exit(:died)
  end

  def run do
    # trap exit and do not stop application
    Process.flag(:trap_exit, true)
    # spawn link receives messages
    spawn_link(Link, :sad_function, [])
    receive do
      msg ->
        IO.puts "message: #{inspect msg}"
      after 1000 ->
        IO.puts "emptiness..."
    end
  end
end

Link.run
