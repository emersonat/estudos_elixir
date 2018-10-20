


map_forma1 = %{:nome => "emerson", "endereco" => "rua banco de areia"}
map_forma2 = %{nome: "emerson", endereco: "rua banco de areia"}

# obtendo valores
map_forma1[:nome] # igual uma keyword list
map_forma1["endereco"]
map_forma1.nome
Map.fetch(map_forma1, :nome) # retorno tupla {:ok, "emerson"}

# Iternado no map e exibindo chave e valor utilizano pattern match ;)
Enum.each(map_forma1,
    fn {key, valor} ->
        IO.puts key
        IO.puts valor
    end)

#atualizando valor valor no map
%{map_forma1 | nome: "outro nome"}

# adicionando nova entrada no map
Map.put_new(map_forma1, "profissao", "programador")



