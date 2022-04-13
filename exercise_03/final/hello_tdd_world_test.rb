require_relative "./check"
require_relative "./hello_tdd_world"

class HelloTddWorldTest < Check
  def check_returns_default_tdd_greeting
    is_equal?(HelloTddWorld.default, "Hello, TDD World!")
  end

  def check_returns_personalized_greeting
    is_equal?(HelloTddWorld.personalized("Mary"), "Hello Mary, TDD superstar!")
    is_equal?(HelloTddWorld.personalized("John"), "Hello John, TDD superstar!")
  end

  def check_returns_collection_of_fun_tdd_phrases
    expected_phrases = [
      "Red - Green - Refactor, baby!",
      "TDD will change your life!",
      "I came in red, I saw green, I refactored. - Julius Cesar"
    ]

    is_equal?(expected_phrases, HelloTddWorld.fun_phrases)
  end
end
