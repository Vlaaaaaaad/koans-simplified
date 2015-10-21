require File.expand_path(File.dirname(__FILE__) + '/neo')

C = "top level"

class AboutConstants < Neo::Koan

  C = "nested"

  def test_nested_constants_may_also_be_referenced_with_relative_paths
    assert_equal __, C
  end

  def test_nested_constants_are_referenced_by_their_complete_path
    assert_equal __, AboutConstants::C
  end

  # ------------------------------------------------------------------


  class Reptile < Animal
    def legs_in_reptile
      LEGS
    end
  end

  def test_subclasses_inherit_constants_from_parent_classes
    assert_equal __, Reptile.new.legs_in_reptile
  end

  # ------------------------------------------------------------------

end
