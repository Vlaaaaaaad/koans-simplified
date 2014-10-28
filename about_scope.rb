require File.expand_path(File.dirname(__FILE__) + '/neo')

class AboutScope < Neo::Koan
  module Jims
    class Dog
      def identify
        :jims_dog
      end
    end
  end

  module Joes
    class Dog
      def identify
        :joes_dog
      end
    end
  end

  def test_dog_is_not_available_in_the_current_scope
    assert_raise(___) do
      Dog.new
    end
  end

  def test_you_can_reference_nested_classes_using_the_scope_operator
    fido = Jims::Dog.new
    rover = Joes::Dog.new
    assert_equal __, fido.identify
    assert_equal __, rover.identify

    assert_equal __, fido.class != rover.class
    assert_equal __, Jims::Dog != Joes::Dog
  end

end
