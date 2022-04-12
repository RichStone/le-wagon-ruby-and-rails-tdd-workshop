require_relative "./check"

class CheckTest < Check
  # This one should pass.
  def check_1_is_equal_1
    is_equal?(1, 1)
  end

  # This one will "fail".
  def check_nil_is_not_equal_false
    is_equal?(nil, false)
  end

  # More tests.
  def check_string_is_equal_string
    is_equal?("string", "string")
  end

  def check_regex_is_equal_regex
    is_equal?(/regex/, /regex/)
  end

  def check_symbol_is_equal_symbol
    is_equal?(:symbol, :symbol)
  end

  def check_nil_is_equal_nil
    is_equal?(nil, nil)
  end
end
