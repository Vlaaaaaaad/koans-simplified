require File.expand_path(File.dirname(__FILE__) + '/neo')

class AboutExceptions < Neo::Koan

  class MySpecialError < RuntimeError
  end

  def test_rescue_clause
    result = nil
    begin
      fail "Oops"
    rescue StandardError => ex
      result = :exception_handled
    end

    assert_equal __, result

    assert_equal __, ex.is_a?(StandardError), "Should be a Standard Error"
    assert_equal __, ex.is_a?(RuntimeError),  "Should be a Runtime Error"

    assert RuntimeError.ancestors.include?(StandardError),
      "RuntimeError is a subclass of StandardError"

    assert_equal __, ex.message
  end

  def test_raising_a_particular_error
    result = nil
    begin
      # 'raise' and 'fail' are synonyms
      raise MySpecialError, "My Message"
    rescue MySpecialError => ex
      result = :exception_handled
    end

    assert_equal __, result
    assert_equal __, ex.message
  end

  def test_ensure_clause
    result = nil
    begin
      fail "Oops"
    rescue StandardError
      # no code here
    ensure
      result = :always_run
    end

    assert_equal __, result
  end

end
