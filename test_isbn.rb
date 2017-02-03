# Requirements
# - Takes a string
# - Check for invalid chars
# - Accept X on last position
# - Return true or false
# - Check position of string 

require "minitest/autorun"
require_relative "isbn.rb"

class TestIsbn < Minitest::Test


def test_isbn_lenght_10_chars
	assert_equal(true,check_length(["978 5 471 486"]))
end

def test_isbn_incorret_number_of_chars
	assert_equal(false,check_length(["978 471 486"]))
end

def test_isbn_13_length
	assert_equal(true,check_length(["978 5 471 486-425"]))
end

def test_isbn_13_incorret_number_of_chars
	assert_equal(false,check_length(["978 471 486-1-1-2"]))
end


def test_isbn_10_with_x
	assert_equal(true,check_number_isbn10(["978 5 471 48x"]))
end

def test_isbn_10_has_invalid_chars
	assert_equal(false,check_number_isbn10(["978-0-471-aaa"]))
end

def test_isbn_10_with_spaces
	assert_equal(true,check_number_isbn10(["978 5 471 486", "978 5 471 489"]))
end

def test_isbn_has_13_with_invalid_chars
	assert_equal(false,check_number_isbn13(["142536473625 1","978-0 471-888aaa"]))
end

end

# def test_isbn_special_char
#  	assert_equal(false,check_is_number(["970()471-48"]))
# end

# def test_isbn_with_last_X
#  	assert_equal(true,check_last_char_x(["978 5 471 48X"]))
# end

# def test_isbn_with_last_not_X
#  	assert_equal(false,check_last_char_x(["978 5 471 48C"]))
# end

# def test_isbn_10_check_digit
# 	assert_equal(true,check_isbn_10(["7421394761","877195869x"]))
# end

# def test_isbn_10_check_digit_wrong_num
# 	assert_equal(false,check_isbn_10(["7421394766"]))
# end	

# def test_isbn_13_check_digit
# 	assert_equal(true,check_isbn_13(["9780470059029"]))
# end

# end


