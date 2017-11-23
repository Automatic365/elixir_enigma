defmodule Enigma.KeyGen  do

  def generate_key do
    Enum.random(10000..99999)
    |> Integer.to_string
  end

  def parse_key(key) do

  end

end