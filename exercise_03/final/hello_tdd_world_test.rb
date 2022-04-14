require "minitest/autorun"
require_relative "./hello_tdd_world"

class HelloTddWorldTest < Minitest::Test
  def test_returns_default_tdd_greeting
    assert_equal(HelloTddWorld.default, "Hello, TDD World!")
  end

  def test_returns_personalized_greeting
    assert_equal(HelloTddWorld.personalized("Mary"), "Hello Mary, TDD superstar!")
    assert_equal(HelloTddWorld.personalized("John"), "Hello John, TDD superstar!")
  end

  def test_returns_collection_of_fun_tdd_phrases
    expected_phrases = [
      "Red - Green - Refactor, baby!",
      "TDD will change your life!",
      "I came in red, I saw green, I refactored. - Julius Cesar"
    ]

    assert_equal(expected_phrases, HelloTddWorld.fun_phrases)
  end
end
