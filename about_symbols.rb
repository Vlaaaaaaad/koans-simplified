require File.expand_path(File.dirname(__FILE__) + '/neo')

class AboutSymbols < Neo::Koan
  def test_symbols_are_symbols
    symbol = :ruby
    assert_equal __, symbol.is_a?(Symbol)
  end

  def test_symbols_can_be_compared
    symbol1 = :a_symbol
    symbol2 = :a_symbol
    symbol3 = :something_else

    assert_equal __, symbol1 == symbol2
    assert_equal __, symbol1 == symbol3
  end

  def test_identical_symbols_are_a_single_internal_object
    symbol1 = :a_symbol
    symbol2 = :a_symbol

    assert_equal __, symbol1 == symbol2
  end

  def test_symbols_can_be_made_from_strings
    string = "catsAndDogs"
    assert_equal __, string.to_sym
  end
end
