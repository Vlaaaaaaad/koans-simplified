require File.expand_path(File.dirname(__FILE__) + '/neo')

def my_global_method(a,b)
  a + b
end

class AboutMethods < Neo::Koan

  # TODO
  def test_calling_global_methods
    assert_equal __, my_global_method(2,3)
  end

  # TODO
  def test_calling_global_methods_without_parentheses
    result = my_global_method 2, 3
    assert_equal __, result
  end

  # TODO
  # (NOTE: We are Using eval below because the example code is
  # considered to be syntactically invalid).
  def test_sometimes_missing_parentheses_are_ambiguous
    eval "assert_equal 5, my_global_method 2, 3" # ENABLE CHECK
    #
    # Ruby doesn't know if you mean:
    #
    #   assert_equal(5, my_global_method(2), 3)
    # or
    #   assert_equal(5, my_global_method(2, 3))
    #
    # Rewrite the eval string to continue.
    #
  end

  # ------------------------------------------------------------------

  # TODO
  def method_with_defaults(a, b=:default_value)
    [a, b]
  end

  # TODO
  def test_calling_with_default_values
    assert_equal [1, __], method_with_defaults(1)
    assert_equal [1, __], method_with_defaults(1, 2)
  end

  # ------------------------------------------------------------------

  def method_with_var_args(*args)
    args
  end

  # TODO
  def test_calling_with_variable_arguments
    assert_equal __, method_with_var_args.class
    assert_equal __, method_with_var_args
    assert_equal __, method_with_var_args(:one)
    assert_equal __, method_with_var_args(:one, :two)
  end

  # ------------------------------------------------------------------

  def method_with_explicit_return
    :a_non_return_value
    return :return_value
    :another_non_return_value
  end

  # TODO
  def test_method_with_explicit_return
    assert_equal __, method_with_explicit_return
  end

  # ------------------------------------------------------------------

  def method_without_explicit_return
    :a_non_return_value
    :return_value
  end

  # TODO
  def test_method_without_explicit_return
    assert_equal __, method_without_explicit_return
  end

  # ------------------------------------------------------------------

  def my_method_in_the_same_class(a, b)
    a * b
  end

  # TODO
  def test_calling_methods_in_same_class
    assert_equal __, my_method_in_the_same_class(3,4)
  end

  # TODO
  def test_calling_methods_in_same_class_with_explicit_receiver
    assert_equal __, self.my_method_in_the_same_class(3,4)
  end

  # ------------------------------------------------------------------

  class Dog
    def name
      "Fido"
    end

    private

    def tail
      "tail"
    end
  end

  # TODO
  def test_calling_methods_in_other_objects_require_explicit_receiver
    rover = Dog.new
    assert_equal __, rover.name
  end

  # TODO
  def test_calling_private_methods_in_other_objects
    rover = Dog.new
    assert_raise(___) do
      rover.tail
    end
  end
end
