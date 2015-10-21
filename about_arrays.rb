require File.expand_path(File.dirname(__FILE__) + '/neo')

class AboutArrays < Neo::Koan
  # TODO
  def test_creating_arrays
    empty_array = Array.new
    assert_equal __, empty_array.class
    assert_equal __, empty_array.size
  end

  # TODO
  def test_array_literals
    array = Array.new
    assert_equal [], array

    array[0] = 1
    assert_equal [1], array

    array[1] = 2
    assert_equal [1, __], array

    array << 333
    assert_equal __, array
  end

  # TODO
  def test_accessing_array_elements
    array = [:peanut, :butter, :and, :jelly]

    assert_equal __, array[0]
    assert_equal __, array.first
    assert_equal __, array[3]
    assert_equal __, array.last
    assert_equal __, array[-1]
    assert_equal __, array[-3]
  end

  def test_arrays_and_ranges
    assert_equal __, (1...5).to_a
  end

end
