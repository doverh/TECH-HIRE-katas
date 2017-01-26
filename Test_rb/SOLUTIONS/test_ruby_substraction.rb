require "minetest/autorun"
require_relative "ruby_substraction"

class TestRubySubstraction < Minitest::test

	def substract_one_number_from_another
			assert_equal(1, subs(2,1))		
	end