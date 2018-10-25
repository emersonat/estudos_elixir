#exemplo de modulo
defmodule Func do

    def multiplique(a,b \\ 2) do
        soma(10,a * b)
    end

   defp soma(num1,num2) do
       num1 + num2

   end

   def saudacao(gretting, name), do: (
       IO.puts gretting
       IO.puts "seu nome #{name}"
   )

   ## recurcividade utilizando head | tail
   def add_1([]),do: []

   def add_1([head | tail ]) do

    [head + 1 | add_1(tail)]

   end

   ## exemplo funcoes para reduce
   def reduce( [], valor_inicial, _ ), do: valor_inicial

   def reduce( [head|tail], valor_inicial, func ) do
    reduce(tail,func.(head,valor_inicial), func )
   end

   def max([]), do: 0

   def max( [head|tail] ) do

    cond do
        head > max(tail) ->
            head
        true ->
            max(tail)

    #end


    # if(head > max(tail)) do
    #    head
    #else
    #    max(tail)
    #end

   end



end
