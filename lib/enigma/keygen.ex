defmodule Enigma.Keygen  do

  def generate_valid_key do
    generate_keylist
    |> validate_key
  end


  def generate_keylist do
    Enum.to_list(1..100000)
    |> Enum.map(fn(x) -> Integer.to_string(x) end)
  end

  def parse_key(key) do

  end

  def validate_key(keylist) do
    keylist
    |> Enum.filter(fn(x) -> String.length(x) == 5 end)
    |> Enum.take_random(1)
    |> Enum.at(0)
  end

end