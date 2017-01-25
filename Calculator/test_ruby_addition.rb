require "minitest/autorun"
require_relative "ruby_addition.rb"

class TestRubyFunction < Minitest::Test

	#Check if 3 arguments added return a number
     def test_if_3_numbers_where_inserted
     	assert_equal(33,add(5,8,20))
     end

     #Check if 3 arguments added return a number
     def test_if_10_numbers_where_inserted
     	assert_equal(55,add(1,2,3,4,5,6,7,8,9,10))
     end

	#test 2 number return result
	# def test_1_plus_1_returns_2
	# 	assert_equal(2,add(1,1))
	# end

	# def test_if_is_a_number
	#  	assert_nil(nil,add('a',1))
 #     end

 #     def test_float_numbers_addition
 #     	assert_equal(10.88, add(5.44,5.44))
 #     end	
     
     
		# def test_if_parameter_is_number
	# 	assert_equal()
end
