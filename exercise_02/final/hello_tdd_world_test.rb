require_relative "./check"
require_relative "./hello_tdd_world"

class HelloTddWorldTest < Check
  def check_returns_generic_hello_tdd_world
    is_equal?(HelloTddWorld.generic, "Hello, TDD World!")
  end
end
