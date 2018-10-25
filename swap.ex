defmodule Swapper do

  def swap([]), do: []


  def swap([a,b | tail]), do: [b,a| swap(tail) ]

  def swap([_]), do: raise "erro somente listas pares serao processadas"




  def for_location([],_target_loc ), do: []

  def for_location([[time,target_loc, temp, rain] | tail ], target_loc) do

    [ [time,target_loc,temp,rain] | for_location(tail,target_loc)]

  end
  def for_location([ _ | tail], target_loc), do: for_location(tail,target_loc)




  def for_location2([],_target_loc ), do: []

  def for_location2([head = [_,target_loc,_,_] | tail], target_loc ) do

    [ head | for_location2(tail,target_loc)]

  end


  def for_location2([ _ | tail], target_loc), do: for_location2(tail,target_loc)


  def teste_data do
    [
      [231321321,26,15,0.125],
      [231321341,27,15,0.47],
      [131331321,28,15,0.25],
      [331321321,27,15,0.45],
   ]
  end

end
