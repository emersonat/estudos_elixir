defmodule App.Hello do

  #variavel de scopo de modulo
  @prefix Application.get_env(:app, __MODULE__)[:prefix]

  def say(str) do

    @prefix <> str

  end



end
