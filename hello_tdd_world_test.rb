require "minitest/autorun"

class HelloTDDWorldTest < Minitest::Test
  def test_returns_hello_tdd_world
    assert "Hello, TDD World", HelloTDDWorld.
  end
end
