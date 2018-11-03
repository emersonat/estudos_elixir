defmodule Monitor1 do

  import :timer, only: [sleep: 1]

  def sad_function do
    sleep 500
    exit(:boom)
  end

  def run do

    res = spawn_monitor(Link2, :sad_function , [])
    IO.puts inspect res

    receive do
      msg ->
        IO.puts "Mensagem recebida: #{inspect msg}"

      after 1000 ->
        IO.puts "nothing happened for as I am concerned"


    end


  end


end
