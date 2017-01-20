# Random Pairs Function: 
# Make a function that takes in an array of names(strings), 
# Returns an array of arrays(multidemensional array) and if 
# there is an odd number of names then add that name into another 
# group of names. Use TDD and commit to github with each passing test.



	require "minitest/autorun"
	require_relative "random_array.rb" # use relative because is in the same folder

	class TestRandomArray < Minitest::Test


			#1 . Test if the first subarray return number of elements odden or even
			def test_numbers
				counter = random_array()
				assert_equals( true ,counter % 2 == 0)
			end

			# 2. Test if object returned is an Array
			def test_if_is_array
				assert_equals(true, random_array.kind_of?(Array))
			end

			#3. Test if some especific name is in the array
			def test_string_array

			assert_send(["Acevedo", :include?, random_array()])

			end
