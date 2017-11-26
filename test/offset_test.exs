defmodule OffsetTest do
  use ExUnit.Case
  alias Enigma.Offset

  test "it generates offsets from given date" do
    date = "251117"
    offsets = Offset.get_offset(date)
    assert Map.get(offsets, :A) == "7"
    assert Map.get(offsets, :B) == "6"
    assert Map.get(offsets, :C) == "8"
    assert Map.get(offsets, :D) == "9"
  end
end
