
        ####### LISTAS #####
        lista = ["laranja","abacaxi", "uva" ]

        # buscando por index
        Enum.at(lista, 1)

        #iterando lista 01
        Enum.each( lista , fn x -> IO.puts x end)
        lista |> Enum.map(&(IO.puts &1))

        ######## listas com chave e valor
        lista_chave_valor = [nome: "emerson", idade: 40, profissao: "dev" ]

        #acessando um elemento da lista pela chave
        Access.get(lista_chave_valor, :nome)
        lista_chave_valor |> Access.get(:nome) |> IO.puts






        # listas com chave e valor (key pode ser somente ATOM)
        #lista_chave_valor = [fruta1: "laranja", fruta2: "abacaxi", fruta3: "uva" ]
        #lista_chave_valor[:fruta1]
        #Enum.each( lista_chave_valor , fn {k, v}  -> IO.puts "#{k} - #{v}" end) #iterando lista de chave e valor

        ###### MAPAS ########################
        #map = %{a: 1, b: 2,c: "str"}
        #map{:a}
        #map.a

        #map2 = %{"nome" => "emerson", "idade" => 40}
        #map2["nome"]
        #map2["idade"]
        #Enum.each( map2, fn {k, v} -> IO.puts "key -> #{k} value -> #{v} " end) #iterando MAP

        #usuarios = %{
         #   "emerson" => %{idade: 40, cpf: "30064652882" },
          #  "camila"  => %{idade: 41, cpf: "43443434344" }
        #}
        #usuarios["emerson"].idade








