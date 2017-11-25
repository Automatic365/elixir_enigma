require IEx;

defmodule KeygenTest do
  use ExUnit.Case
  alias Enigma.Keygen
  alias Enigma.Offset
  doctest Enigma.Keygen

  test "it generates random 5 digit key" do
    assert String.length(Keygen.generate_key()) == 5
  end

  test "it generates offsets from given key" do
    key = Keygen.generate_key()
    offsets = Keygen.get_offsets_from_key(key, %Offset{})
    assert Map.get(offsets, :A) == String.slice(key, 0..1)
    assert Map.get(offsets, :B) == String.slice(key, 1..2)
    assert Map.get(offsets, :C) == String.slice(key, 2..3)
    assert Map.get(offsets, :D) == String.slice(key, 3..4)
  end
end

