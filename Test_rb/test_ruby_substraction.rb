require "minitest/autorun"
require_relative "ruby_substraction"

class TestRubySubstraction < Minitest::Test

	def substract_one_number_from_another
			assert_equal(-1, subs(2,3))		
	end
end