defmodule Entidades.Estudante do

  @moduledoc """
    Define a estrutura e funcoes de um estudante
   """
  defstruct nome: nil, resultados: []


  @doc """
    Obtem primeiro nome do estudante
  """
  def primeiro_nome(estudante) do
    estudante.nome
    |> String.split
    |> List.first
  end

  @doc """
    Obtem o ultimo nome do estudante
  """
  def ultimo_nome(estudante) do
    estudante.nome
    |> String.split
    |> List.last
  end






end

