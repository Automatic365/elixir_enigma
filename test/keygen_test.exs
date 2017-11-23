defmodule KeygenTest do
  use ExUnit.Case
  alias Enigma.KeyGen
  doctest Enigma.KeyGen

  test "it generates random 5 digit key" do
    assert String.length(KeyGen.generate_key()) == 5
  end
end

