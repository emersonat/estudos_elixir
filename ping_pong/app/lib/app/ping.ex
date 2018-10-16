defmodule App.Ping do

  def start(valor1) do
    wait(valor1)
  end

  def wait(valor1) do

    receive do

      {pid, :pong} ->
        send(pid, {self(), :ping} )
        IO.puts "Recebi um pong do PID. parametro" <> valor1
     end

     wait(valor1)


  end


end
