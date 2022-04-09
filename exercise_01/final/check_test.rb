require_relative "./check"

class CheckTest < Check
  def test_1_is_equal_1
    is_equal?(1, 1)
  end

  def test_string_is_equal_string
    is_equal?("string", "string")
  end

  def test_regex_is_equal_regex
    is_equal?(/regex/, /regex/)
  end

  def test_symbol_is_equal_symbol
    is_equal?(:symbol, :symbol)
  end

  def test_nil_is_equal_nil
    is_equal?(nil, nil)
  end

  # This one will "fail".
  def test_nil_is_not_equal_false
    is_equal?(nil, false)
  end
end
