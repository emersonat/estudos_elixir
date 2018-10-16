#exemplo de modulo
defmodule Funcoes_nomeadas do
    
    def multiplique(a,b \\ 2) do
        soma(10,a * b)
    end

   defp soma(num1,num2) do
       num1 + num2
       
   end

end