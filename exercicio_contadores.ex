defmodule Contadores do

    def count([head | tail ]) do

         1 + count(tail)

    end

    def count([]), do: 0
    def count({}), do: 0

    def count(tupla) do

        size = tuple_size tupla

        if  size != 0 do
          1 + count( Tuple.delete_at(tupla,0) )
        end
    end

    def teste() do
        Stream.map(["fgfg","fgfgfgf","ggggg"], &IO.puts/1)

    end

    def read_file() do
        File.stream("texto.txt")
            |> Stream.with_index
            |> Stream.map(&IO.puts/1)

        #Stream.map( File.read("texto.txt") , &(&1)  ) |> Enum.take(10)



    end


 end
