defmodule TestPrivatePackageTest do
  use ExUnit.Case
  doctest TestPrivatePackage

  test "greets the world" do
    assert TestPrivatePackage.hello() == :world
  end
end
