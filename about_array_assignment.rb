require File.expand_path(File.dirname(__FILE__) + '/neo')

class AboutArrayAssignment < Neo::Koan

  # TODO
  def test_non_parallel_assignment
    names = ["John", "Smith"]
    assert_equal __, names
  end

  # TODO
  def test_parallel_assignments
    first_name, last_name = ["John", "Smith"]
    assert_equal __, first_name
    assert_equal __, last_name
  end

  # TODO
  def test_swapping_with_parallel_assignment
    first_name = "Roy"
    last_name = "Rob"
    first_name, last_name = last_name, first_name
    assert_equal __, first_name
    assert_equal __, last_name
  end
end
