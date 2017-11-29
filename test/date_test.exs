defmodule DateTest do
  use ExUnit.Case
  alias Enigma.Date

  test "parse_date: it parses a date map into a string of valid values when a date is passed in" do
    date = %{calendar: Calendar.ISO, day: 25, month: 11, year: 2017}
    assert Date.parse_date(date) == "251117"
  end

  test "parse_date: it parses a date map into a string of valid values when no date is passed in" do
    assert Date.parse_date() == Date.parse_date(Timex.today)
  end

end