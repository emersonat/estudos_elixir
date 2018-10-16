defmodule Calculadora do


  alias Entidades.Estudante, as: Estudante

  @moduledoc """
    Define a caculadora e funcoes para executar
  """

  @doc """
    Inicia sistema

  """
  def start() do
    #criando estudantes
    joao = %Estudante{nome: "Emerson de Andrade", resultados: build_materias([5.2, 3.9, 2.7, 9.8 ]) }
    maria = %Estudante{nome: "Maria da Silva", resultados: build_materias([8.4, 7.5, 9.4, 2.8])}
    pedro = %Estudante{nome: "Pedro Pedrada", resultados: build_materias( [1.3, 8.5, 8.9, 7.6] ) }
    kaua= %Estudante{nome: "Kauã Camboinhas", resultados: build_materias( [5.4, 4.9, 2.2, 3.8])}

    result = calculate( [joao, maria, pedro, kaua] )
    best = best_result(result)

    { result, best }

  end

  defp best_result(estudantes) do

    best = estudantes
    |> Enum.map( &(&1.media)  )
    |> Enum.max

    estudantes
    |> Enum.filter( &(&1.media === best ) )

  end

  defp calculate(estudantes) do

    estudantes
    |> Enum.map(&(
      %{
        primeiro_nome: Estudante.primeiro_nome(&1),
        segundo_nome: Estudante.ultimo_nome(&1),
        media: average(&1)
      }


    ))

  end

  defp average(estudante) do
      total = Enum.count( estudante.resultados )

      result = estudante.resultados
      |> Enum.map( &(&1.resultado) )
      |> Enum.reduce( &(&1 + &2) )

      Float.ceil(result / total , 2)
  end

  defp build_materias(resultados) do

    materias = ["Matematica","Portugues","Geografia","Historia"]

    materias
    |> Enum.map( &( %Materia{nome: &1, resultado: Enum.random( resultados )}))



  end


end
