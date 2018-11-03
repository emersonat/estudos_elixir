defmodule Spawn4 do

  def greet do

    IO.puts "iniciando metodo"

    receive do
      {sender, msg} ->

        send sender,{:ok, "Hello, #{msg}"}
        greet()

    end



  end


end
