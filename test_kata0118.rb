	#Class test for kata0118

	#Includes is similar to import
	require "minitest/autorun"
	require_relative "kata0118.rb" # use relative because is in the same folder

	#Declare the class and define that it is a class test using Minitest::Test
	class TestMinedMindsKata < Minitest::Test
			def test_1_returns_1
				assert_equal(1,1)
			end

			def test_function_returns_1
				assert_equal(1, minedmindskata(1))
			end

			def test_function_returns_2
				assert_equal(2, minedmindskata(2))
			end

			def test_function_return_3
				assert_equal("Mined", minedmindskata(3))
			end

			def test_function_return_5
				assert_equal("Minds", minedmindskata(5))
			end

			def test_funtion_return_15
				assert_equal("Mined Minds", minedmindskata(15))
			end

			def test_funtion_return_100
				assert_equal("Mined", minedmindskata(100))
			end

			def test_funtion_return_101
				assert_equal(101, minedmindskata(101))
			end
	end