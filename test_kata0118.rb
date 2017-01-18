	#Class test for kata0118

	#Includes is similar to import
	require "minitest/autorun"
	require_relative "kata0118.rb" # use relative because is in the same folder

	#Declare the class and define that it is a class test
	class TestMinedMindsKata < Minitest::Test
			def test_1_returns_1
				assert_equal(1,1)
			end
	end