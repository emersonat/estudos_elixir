defmodule listas do
    
    def lista do
        
        ####### LISTAS #####
        lista = ["laranja","abacaxi", "uva" ]
        Enum.at(lista, 1) # buscando por index
        Enum.each( lista , fn x -> IO.puts x end) #iterando lista

        # listas com chave e valor (key pode ser somente ATOM)
        lista_chave_valor = [fruta1: "laranja", fruta2: "abacaxi", fruta3: "uva" ]
        lista_chave_valor[:fruta1]
        Enum.each( lista_chave_valor , fn {k, v}  -> IO.puts "#{k} - #{v}" end) #iterando lista de chave e valor

        ###### MAPAS ########################
        map = %{a: 1, b: 2,c: "str"}
        map{:a}
        map.a

        map2 = %{"nome" => "emerson", "idade" => 40}
        map2["nome"]
        map2["idade"]
        Enum.each( map2, fn {k, v} -> IO.puts "key -> #{k} value -> #{v} " end) #iterando MAP

        usuarios = %{
            "emerson" => %{idade: 40, cpf: "30064652882" },
            "camila"  => %{idade: 41, cpf: "43443434344" }
        }
        usuarios["emerson"].idade

       







    end


end