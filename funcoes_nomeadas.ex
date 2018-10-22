#exemplo de modulo
defmodule FuncoesNomeadas do

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

end
