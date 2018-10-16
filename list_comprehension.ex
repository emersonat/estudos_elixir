defmodule comprehension do
    

    def teste do
        
        lista = ["laranja","abacaxi", "uva",:atom1,:atom2 ]
  
        for x <- lista, do: IO.puts x # percorrendo lista
        for x <- lista, is_atom(x), do: IO.puts x #aplicando filtro na interacao

    end

end