defmodule ListFilterRecursiveTest do
  use ExUnit.Case

  describe "call/1" do
    test "count odd numbers in a string list" do
      list1 = ["1", "3", "6", "43", "banana", "6", "abc"]
      list2 = ["apple", "pineapple", "10", "11", "63"]

      assert ListFilterRecursive.call(list1) === 3
      assert ListFilterRecursive.call(list2) === 2
    end

    test "passing an empty list" do
      list = []

      assert ListFilterRecursive.call(list) == 0
    end
  end
end
