require_relative "./check"
require_relative "./hello_tdd_world"

class HelloTddWorldTest < Minitest::Test
  def test_returns_hello_tdd_world
    Check.is_equal?(HelloTddWorld.generic, "Hello, TDD World!")
  end
end
