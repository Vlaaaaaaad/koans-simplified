# -*- coding: utf-8 -*-
require File.expand_path(File.dirname(__FILE__) + '/neo')

class AboutRegularExpressions < Neo::Koan
  # TODO
  def test_a_pattern_is_a_regular_expression
    assert_equal __, /pattern/.class
  end

  # TODO
  def test_a_regexp_can_search_a_string_for_matching_content
    assert_equal __, "some matching content"[/match/]
  end

  # TODO
  def test_plus_means_one_or_more
    assert_equal __, "abbcccddddeeeee"[/bc+/]
  end

  # TODO
  def test_asterisk_means_zero_or_more
    assert_equal __, "abbcccddddeeeee"[/ab*/]
    assert_equal __, "abbcccddddeeeee"[/az*/]
    assert_equal __, "abbcccddddeeeee"[/z*/]

    # THINK ABOUT IT:
    #
    # When would * fail to match?
  end
end
