defmodule OffsetTest do
  use ExUnit.Case
  alias Enigma.Offset

  test "it generates offsets from given date" do
    date = "020315"
    offsets = Offset.get_offset(date)
    assert Map.get(offsets, :A_offset) == "9"
    assert Map.get(offsets, :B_offset) == "2"
    assert Map.get(offsets, :C_offset) == "2"
    assert Map.get(offsets, :D_offset) == "5"
  end
end
