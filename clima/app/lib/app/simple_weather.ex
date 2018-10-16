defmodule App.Simple_Weather do

  @kelvin_value 273.15

  def get_appid() do

    "71ca2a27e41e99b6032bf89e7b12fd86"

  end

  def get_endpoint(location) do

    location = URI.encode(location)
    "http://api.openweathermap.org/data/2.5/weather?q=#{location}&appid=#{get_appid()}"

  end

  def kelvin_to_celsius(kelvin) do
    Float.round( (kelvin - @kelvin_value) , 1)
  end


  def temperature_of(location) do

    result = get_endpoint(location) |> HTTPoison.get |> parser_response

    case result do
      {:ok , temp} ->
        "#{location} : #{temp} C"

      :error ->
        "#{location} not found"
    end

  end


  defp parser_response( {:ok, %HTTPoison.Response{body: body,status_code: 200} } ) do
      body |> JSON.decode! |> compute_temperature
  end

  defp parser_response(_),	do:	:error

  defp compute_temperature(json) do

    try do
      temp = json["main"]["temp"] |> kelvin_to_celsius
      {:ok, temp}
    rescue
      _ -> :error
    end
  end


    def start(cities) do
      cities
      |> Enum.map(&create_task/1)
      |> Enum.map(&Task.await/1)
     

    end

    defp create_task(city) do
      Task.async(fn -> temperature_of(city) end)
    end



    def get_temperature() do

      receive do
        {manager_pid,city} ->
          send(manager_pid, {:ok, temperature_of(city)} )
        _ ->
          IO.puts "ERRO"
      end

      get_temperature()

    end


    












end
