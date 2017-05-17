ExUnit.start()

defmodule TestStats do
  use ExUnit.Case

  setup do
    [
      list: [1, 3, 5, 7, 9, 11],
      sum: 36,
      count: 6,
    ]
  end

  describe "Stats on lists of integers" do
    test "calculates sum", fixture do
      assert Stats.sum(fixture.list) == fixture.sum
    end

    test "counts elements", fixture do
      assert Stats.count(fixture.list) == fixture.count
    end

    test "calculates mean", fixture do
      assert Stats.mean(fixture.list) == fixture.sum / fixture.count
    end
  end
end
