defmodule App.CalculadorTest do

  use ExUnit.Case, async: true

  setup do
    { :ok, tiago: 2, davi: 6 }

  end

  test "deve retornar 6 quando multiplicar 2 por 6" , %{davi: valor} do
    assert App.Calculador.multiply(2,3) == valor
  end

  test "deve retornar 4 quando multiplico 2 por 2" do

    assert App.Calculador.multiply(2,2) == 4

  end

  test "should return nil when multiply 2 by nil" do
    assert  App.Calculador.multiply(2, nil) == nil
  end

  test "should return nil when multiply nil by 2" do
    assert  App.Calculador.multiply(nil, 2) == nil
  end

  test "should return 10 when multiply 2 by 4" do
    refute App.Calculador.multiply(2, 4) == 10, "This is an error!!"
    end

end
