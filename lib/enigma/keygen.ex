require IEx;

defmodule Enigma.Keygen  do
  alias Enigma.Rotation

  def generate_key do
    key = Enum.random(10000..99999)
          |> Integer.to_string
  end

  def get_rotations_from_key(key, rotations) do
    rotations = %{
      rotations |
      A: "#{String.slice(key, 0..1)}",
      B: "#{String.slice(key, 1..2)}",
      C: "#{String.slice(key, 2..3)}",
      D: "#{String.slice(key, 3..4)}"
    }
  end

end