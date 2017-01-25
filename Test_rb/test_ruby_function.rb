require "minitest/autorun"
require_relative "ruby_function.rb"

class TestRubyFunction < Minitest::Test

	#test 2 number return result
	def test_1_plus_1_returns_2
		assert_equal(2,add(1,1))
	end

	def test_if_is_a_number
	 	assert_nil(nil,add('a',1))
     end

     def test_float_numbers_addition
     	assert_equal(10.88, add(5.44,5.44))
     end	
     
     def test_if_2_numbers_where_inserted
     
     end

		# def test_if_parameter_is_number
	# 	assert_equal()
end
