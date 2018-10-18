


map_forma1 = %{:nome => "emerson", "endereco" => "rua banco de areia"}
map_forma2 = %{nome: "emerson", endereco: "rua banco de areia"}

# obtendo valores
map_forma1[:nome] # igual uma keyword list
map_forma1["endereco"]

# Iternado no map e exibindo chave e valor utilizano pattern match ;)
Enum.each(map_forma1, 
    fn {key, valor} -> 
        IO.puts key 
        IO.puts valor 
    end)

#adicionado valor
    

