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

  def test_returns_configurable_custom_phrase
    phrase = "Custom TDD phrase"
    assert_equal "Custom TDD phrase", HelloTddWorld.new(phrase).custom_phrase

    bot = HelloTddWorld.new("Another Custom TDD phrase")
    assert_equal "Another Custom TDD phrase", bot.custom_phrase

    bot.custom_phrase = "Changed existing TDD phrase"
    assert_equal "Changed existing TDD phrase", bot.custom_phrase
  end

  def test_puts_custom_phrase
    assert_output(/TDD phrase/) { HelloTddWorld.new("TDD phrase").puts_custom_phrase }
  end
end
