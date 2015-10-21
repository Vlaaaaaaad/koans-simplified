require File.expand_path(File.dirname(__FILE__) + '/neo')

class AboutNil < Neo::Koan

	# TODO
	def test_nil_is_an_object
		assert_equal true, nil.is_a?(Object), "Unlike NULL in other languages"
	end

	# TODO
	def test_nil_has_a_few_methods_defined_on_it
		assert_equal true, nil.nil?
		assert_equal "", nil.to_s
		assert_equal "nil", nil.inspect

		# THINK ABOUT IT:
		#
		# Is it better to use
		#    obj.nil?
		# or
		#    obj == nil
		# Why?
	end

end
