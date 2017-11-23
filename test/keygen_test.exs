defmodule KeygenTest do
  use ExUnit.Case
  alias Enigma.Keygen
  doctest Enigma.Keygen

  test "it generates a keylist of numbers from 1 to 100000" do
    assert Enum.at(Keygen.generate_keylist(), 0) == "1"
    assert Enum.at(Keygen.generate_keylist(), 99999) == "100000"
  end

  test "it returns a valid 5 digit key" do
    keylist = Keygen.generate_keylist()
    valid_key = Keygen.validate_key(keylist)
    assert String.length(valid_key) == 5
  end

  test "it generates random 5 digit key" do
    assert String.length(Keygen.generate_valid_key()) == 5
  end

end

