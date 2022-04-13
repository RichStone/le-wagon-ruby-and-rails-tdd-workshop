require_relative "./check"
require_relative "./hello_tdd_world"

class HelloTddWorldTest < Check
  def check_returns_default_tdd_greeting
    is_equal?(HelloTddWorld.default, "Hello, TDD World!")
  end
end
