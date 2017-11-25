defmodule KeygenTest do
  use ExUnit.Case
  alias Enigma.Keygen
  alias Enigma.Rotation

  test "it generates random 5 digit key" do
    assert String.length(Keygen.generate_key()) == 5
  end

  test "it generates rotations from given key" do
    key = Keygen.generate_key()
    rotations = Keygen.get_rotations_from_key(key, %Rotation{})
    assert Map.get(rotations, :A) == String.slice(key, 0..1)
    assert Map.get(rotations, :B) == String.slice(key, 1..2)
    assert Map.get(rotations, :C) == String.slice(key, 2..3)
    assert Map.get(rotations, :D) == String.slice(key, 3..4)
  end
end

