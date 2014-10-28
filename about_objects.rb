require File.expand_path(File.dirname(__FILE__) + '/neo')

class AboutObjects < Neo::Koan
  # TODO
  def test_everything_is_an_object
    assert_equal __, 1.is_a?(Object)
    assert_equal __, 1.5.is_a?(Object)
    assert_equal __, "string".is_a?(Object)
    assert_equal __, nil.is_a?(Object)
    assert_equal __, Object.is_a?(Object)
  end

  # TODO
  def test_objects_can_be_converted_to_strings
    assert_equal __, 123.to_s
    assert_equal __, nil.to_s
  end

  def test_objects_can_be_inspected
    assert_equal __, 123.inspect
    assert_equal __, nil.inspect
  end

  # TODO
  def test_every_object_has_an_id
    obj = Object.new
    assert_equal __, obj.object_id.class
  end
end
