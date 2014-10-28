require File.expand_path(File.dirname(__FILE__) + '/neo')

class AboutMessagePassing < Neo::Koan

  class MessageCatcher
    def caught?
      true
    end
  end

  def test_methods_can_be_called_directly
    mc = MessageCatcher.new

    assert mc.caught?
  end

  def test_methods_can_be_invoked_by_sending_the_message
    mc = MessageCatcher.new

    assert mc.send(:caught?)
  end

  def test_methods_can_be_invoked_more_dynamically
    mc = MessageCatcher.new

    assert mc.send("caught?")
    assert mc.send("caught" + __ )    # What do you need to add to the first string?
    assert mc.send("CAUGHT?".____ )      # What would you need to do to the string?
  end

  # ------------------------------------------------------------------

  class MessageCatcher
    def add_a_payload(*args)
      args
    end
  end

  def test_sending_a_message_with_arguments
    mc = MessageCatcher.new

    assert_equal __, mc.add_a_payload
    assert_equal __, mc.send(:add_a_payload)

    assert_equal __, mc.add_a_payload(3, 4, nil, 6)
    assert_equal __, mc.send(:add_a_payload, 3, 4, nil, 6)
  end


end
