
#
# Utilizando pattern matchin uma funcao varias implementacoes
#
IO.puts "INICIO funcao varias implementacoes"
handle_open = fn

      {:ok,file} ->
       #IO.puts "lendo primeira linha do arquivo"
        "Read data: #{IO.read(file, :line)}"

      {_, error} -> "Error: #{:file.format_error(error)}"

    end
    #handle_open.(File.open("calculadora.ex"))


teste_funcoes = fn
  0,0,_ -> IO.puts "FizzBuzz"

  0,_,_ -> IO.puts "Fizz"

  _,_,valor -> IO.puts valor

end
IO.puts teste_funcoes.(0,0,10)
IO.puts teste_funcoes.(0,10,10)
IO.puts teste_funcoes.(10,11,12)

IO.puts "**************************** FIM uma funcao varias implementacoes **************** \n\n\n"


#teste_funcoes2 = fn
 # n ->
  #  teste_funcoes.( rem(n,3) )
   # teste_funcoes.( rem(n,35) )
    #teste_funcoes.( n )
  #end

  #teste_funcoes2.(10)
  #teste_funcoes2.(11)
  #teste_funcoes2.(12)


  #
  # INNER FUNCIONS
  #
  IO.puts "INICIO INNERS FUNCTIONS"
  prefix = fn
    label ->
      fn name ->
        IO.puts "Ola #{label} #{name} "
      end

    end
senhor = prefix.("SR")
senhor.("Emerson")
prefix.("SRA").("camila")
IO.puts "**************************** FIM INNERS FUNCTIONS **************** \n\n\n"

# operador &
Enum.map [1,2,3,4],&(&1 + 2)
imprime = &IO.puts/1 #operador & usado como wrapper de fun






