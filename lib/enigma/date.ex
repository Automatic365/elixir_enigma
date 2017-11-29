defmodule Enigma.Date do

  def parse_date(date \\ "") do
    if date == "" do
      date = Timex.today
    end
    numeric_date = ""
    valid_values = [:day, :month, :year]
    values = Enum.map(valid_values, fn (x) -> Map.get(date, x) end)
             |> Enum.map(fn (x) -> Integer.to_string(x) end)
             |> parse_valid_date_values
  end

  defp parse_valid_date_values(list) do
    [day, month, year] = list
    "#{day}#{month}#{String.slice(year, 2..3)}"
  end

end