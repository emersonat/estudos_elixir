#criando stream
s = Stream.map([1,2,3,4,5,6], &(&1+1) )
Enum.to_list(s)

# exemplo passando uma stream para outra stream
squares = Stream.map([1,2,3,4], &(&1*&1) )
plus_ones = Stream.map(squares, &(&1 + 1 ) )
odds = Stream.filter(plus_ones, &( rem(&1,2) == 1 ))


[1,2,3,4]
|> Stream.map( &(&1*&1) )
|> Stream.map( &(&1 + 1))
|> Stream.filter( &( rem(&1,2) == 1) )
|> Enum.to_list


Stream.iterate(0, &(&1 + 1) ) |> Enum.take(5)
Stream.iterate(2, &(&1 * &1) ) |> Enum.take(5)

Stream.resource(
  fn -> File.open!("estudante.ex") end,

  fn file ->
    case IO.read(file,:line) do
      data when is_binary(data) ->
        {[data],file}

      _ ->
        {:halt,file}
    end
  end,

  fn file -> File.close(file) end) |> Enum.to_list

