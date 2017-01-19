	require "minitest/autorun"
	require_relative "01182017_homework.rb" # use relative because is in the same folder

	class TestArrays < Minitest::Test

		def test_numbers
			counter = using_arrays()
			assert_equal(100, counter.count)
			
		end

		def test_number_15
			results = using_arrays()
			assert_equal("Mined Minds",results[14])
		end


		def test_number_3
			results = using_arrays()
			assert_equal("Mined", results[2])
		end

		def test_number_5
			results = using_arrays()
			assert_equal("Minds", results[4])
		end

		def test_number_101
			results = using_arrays()
			assert_nil(nil, results[100])
		end



end

