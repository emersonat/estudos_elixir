
        #########################################################################################
        ############################### LISTAS ##################################################
        #########################################################################################
        lista = ["laranja","abacaxi", "uva" ]
        lista_sem_uva = lista -- [ "uva" ]
        lista_com_abacaxi = lista ++ [ "abacaxi" ]

        # buscando por index
        Enum.at(lista, 1)

        #iterando lista
        Enum.each( lista , fn x -> IO.puts x end)
        lista |> Enum.map(&(IO.puts &1))

        #
        # keywords list
        # - pouco otimizada
        # - por debaixo dos panos vira uma lista de tuplas
        # - chaves devem ser somente atoms
        #
        lista_chave_valor = [nome: "emerson", idade: 40, profissao: "dev" ]

        #acessando um elemento da lista pela chave
        IO.puts lista_chave_valor[:nome]
        Access.get(lista_chave_valor, :nome)
        lista_chave_valor |> Access.get(:nome) |> IO.puts

        ## adicionando e removendo  chave/valor com operador de listas
        lista_chave_valor = lista_chave_valor ++ [cargo: "gerente"]
        lista_chave_valor = lista_chave_valor -- [cargo: "gerente"]

        # contanis
        manuela in ["emerson","camila"] #false
        manuela in ["emerson","camila","manuela"] #true




##################################################################################
##################### utilizando funcoes ENUM       ##############################
##################################################################################
lista_palavras = ["there","was","a","crooked","man"]
# converte para lista
lista_numero = Enum.to_list 1..10

#concat listas
Enum.concat [1,2,3], [4,5,6]
Enum.concat [1,2,3], 'abc'

# interando e aplicando funcao em cada item da lista
Enum.map(lista_numero, &String.duplicate("*", &1) )

# filtrando lista
Enum.filter(lista_numero, &(&1 > 5) )
Enum.at lista_numero,20,:atom_retornado_quando_nao_achar_indice

# sort
Enum.sort lista_palavras
Enum.sort(lista_palavras, &(String.length(&1) <= String.length(&2)) )

#max
Enum.max lista_numero,
Enum.max_by lista_palavras, &(String.length/1)

#split a collection
Enum.take lista_numero,2 # obterm os dois primeiros items
Enum.take_every lista_numero, 2 # obtem items de dois em dois indices

# join
Enum.join(lista_numero) #junta todos os itens de uma lista transformando em uma string
Enum.join(lista_numero, " - ") # aplica uma string entre os items da lista


#predicate operations
Enum.all?(lista_numero, &(&1 < 20)) # todos menores que 20 TRUE
Enum.any?(lista_numero, &(&1 == 5)) # algum igual a 5 TRUE
Enum.member? lista_numero,10 #pertence a lista

# Merge de listas -> criar uma lista com tuplas
# EXEMPLO DE SAIDA: [{1, "there"}, {2, "was"}, {3, "a"}, {4, "crooked"}, {5, "man"}]
Enum.zip(lista_numero,lista_palavras)

# similar ao merge porem as tuplas contem os indices
# exemplo de saida: [{"there", 0}, {"was", 1}, {"a", 2}, {"crooked", 3}, {"man", 4}]
Enum.with_index(lista_palavras)

#Reduce
Enum.reduce(1..100, &(&1 + &2) )

# exemplo maior palavra
Enum.reduce(lista_palavras,
  fn palavra,maior_palavra ->

    if String.length(palavra) > String.length(maior_palavra) do
      palavra
    else
      maior_palavra
    end

  end)
 # tamnho da maior palavra
 Enum.reduce(lista_palavras,0,
    fn word,longest ->

      if String.length(word) > longest,
        do: String.length(word),
        else: longest

    end)
















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








