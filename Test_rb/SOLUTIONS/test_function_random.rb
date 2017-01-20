require "minitest/autorun"
require_relative "function_random.rb"

class Test_random_function  < Minitest::Test

		#Test if this arry has 100 elements
		def test_function_returns_100_object_in_an_array
			# Size to arrays, lengths to strings
			assert_equal(100, mineminds_array().size)
		end

		#Test if divisible by 3 and 5 return Mined Minds
		def test_number_15
				
			assert_equal("Mined Minds",mineminds_array[14])
			
		end

		#Test if divisible by 3 return Mined
		def test_number_3
			assert_equal("Mined", mineminds_array[2])
		end
		
		#Test if divisible by 5 return Minds
		def test_number_5
			assert_equal("Minds", mineminds_array[4])
		end

		#Test a if a number is returned
		def test_number_49
			assert_equal(49, mineminds_array[48])
		end
		

		# Assert that the position 100 of your string is not used
		def test_number_101
		
			assert_nil(nil, mineminds_array[100])
		end


end
