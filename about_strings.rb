require File.expand_path(File.dirname(__FILE__) + '/neo')

class AboutStrings < Neo::Koan
  # TODO
  def test_double_quoted_strings_are_strings
    string = "Hello, World"
    assert_equal __, string.is_a?(String)
  end

  # TODO
  def test_single_quoted_strings_are_also_strings
    string = 'Goodbye, World'
    assert_equal __, string.is_a?(String)
  end

  # TODO
  def test_use_single_quotes_to_create_string_with_double_quotes
    string = 'He said, "Go Away."'
    assert_equal __, string
  end

  # TODO
  def test_use_double_quotes_to_create_strings_with_single_quotes
    string = "Don't"
    assert_equal __, string
  end

  # TODO
  def test_plus_will_concatenate_two_strings
    string = "Hello, " + "World"
    assert_equal __, string
  end

  # TODO
  def test_plus_concatenation_will_leave_the_original_strings_unmodified
    hi = "Hello, "
    there = "World"
    string = hi + there
    assert_equal __, hi
    assert_equal __, there
  end

  # TODO
  def test_plus_equals_will_concatenate_to_the_end_of_a_string
    hi = "Hello, "
    there = "World"
    hi += there
    assert_equal __, hi
  end

  # TODO
  def test_the_shovel_operator_will_also_append_content_to_a_string
    hi = "Hello, "
    there = "World"
    hi << there
    assert_equal __, hi
    assert_equal __, there
  end

  # TODO
  def test_single_quoted_strings_do_not_interpolate
    value = 123
    string = 'The value is #{value}'
    assert_equal __, string
  end

  # TODO
  def test_strings_can_be_split
    string = "Sausage Egg Cheese"
    words = string.split
    assert_equal [__, __, __], words
  end

  # TODO
  def test_strings_can_be_split_with_different_patterns
    string = "the:rain:in:spain"
    words = string.split(/:/)
    assert_equal [__, __, __, __], words

    # NOTE: Patterns are formed from Regular Expressions.  Ruby has a
    # very powerful Regular Expression library.  We will become
    # enlightened about them soon.
  end

  # TODO
  def test_strings_can_be_joined
    words = ["Now", "is", "the", "time"]
    assert_equal __, words.join(" ")
  end
end
