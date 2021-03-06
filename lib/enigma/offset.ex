require IEx;

defmodule Enigma.Offset do
  alias Enigma.Date
  alias Enigma.OffsetStruct

  def get_offset(parsed_date) do
    offset =
      String.to_integer(parsed_date)
      |> :math.pow(2)
      |> round
      |> Integer.to_string
      |> String.slice(-4..-1)
      |> parse_offsets(%OffsetStruct{})
  end

  defp parse_offsets(offset_string, offsets) do
   [a,b,c,d] =
      String.split(offset_string, "")
      |> List.delete_at(-1)

   offsets = %{
      offsets |
      A_offset: "#{a}",
      B_offset: "#{b}",
      C_offset: "#{c}",
      D_offset: "#{d}"
    }
  end

end