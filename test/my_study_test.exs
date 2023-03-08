defmodule MyStudyTest do
  use ExUnit.Case
  doctest MyStudy

  test "greets the world" do
    assert MyStudy.hello() == :world
  end
end
