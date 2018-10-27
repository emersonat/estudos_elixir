


        lista = ["laranja","abacaxi", "uva",:atom1,:atom2 ]
        numeros_pares = [2,4,6,8,10]
        numeros_impares = [1,3,5,7,9]
        numeros = [1,2,3,4,5,6,7,8,9,10]

        for x <- lista, do: IO.puts x # percorrendo lista
        for x <- lista, is_atom(x), do: IO.puts x #aplicando filtro na interacao

        # executa x com todos y
        for x <- numeros_pares, y <- numeros_impares, do: x

        # aplicando filtros
        for x <- numeros, rem(x,2) == 0, do: x
        for x <- numeros, x > 5,rem(x,2) == 0, do: x

        # usando INTO
        for x <- numeros, into: %{}, do: {x,x}
        for x <- numeros, x > 5,rem(x,2) == 0,into: %{}, do: {x,x}





end
