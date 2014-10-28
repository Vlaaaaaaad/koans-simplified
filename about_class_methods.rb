require File.expand_path(File.dirname(__FILE__) + '/neo')

class AboutClassMethods < Neo::Koan
  class Dog
  end

  def test_you_can_define_methods_on_individual_objects
    fido = Dog.new
    def fido.wag
      :fidos_wag
    end
    assert_equal __, fido.wag
  end

  def test_other_objects_are_not_affected_by_these_singleton_methods
    fido = Dog.new
    rover = Dog.new
    def fido.wag
      :fidos_wag
    end

    assert_raise(___) do
      rover.wag
    end
  end

  # ------------------------------------------------------------------

  class Dog
    def self.class_method2
      :another_way_to_write_class_methods
    end
  end

  def test_you_can_use_self_instead_of_an_explicit_reference_to_dog
    assert_equal __, Dog.class_method2
  end

  # ------------------------------------------------------------------

  class Dog
    class << self
      def another_class_method
        :still_another_way
      end
    end
  end

  def test_heres_still_another_way_to_write_class_methods
    assert_equal __, Dog.another_class_method
  end

  # ------------------------------------------------------------------

  def test_heres_an_easy_way_to_call_class_methods_from_instance_methods
    fido = Dog.new
    assert_equal __, fido.class.another_class_method
  end

end
