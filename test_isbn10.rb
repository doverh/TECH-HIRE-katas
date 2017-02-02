# Requirements
# - Takes a string
# - Check for invalid chars
# - Accept X on last position
# - Return true or false
# - Check position of string 

require "minitest/autorun"
require_relative "isbn10.rb"

class TestIsbn < Minitest::Test

def test_isbn_has_10_chars
	assert_equal(true,check_is_number(["978 5 471 486"]))
end

def test_isbn_has_10_more_then_chars
	assert_equal(false,check_lenght(["978 0 471 48648 02355"]))
end

# def test_isbn_special_char
# 	assert_equal(false,check_is_isbn("970()471-48"))
# end

def test_isbn_with_last_X
 	assert_equal(true,check_last_char_x(["978 5 471 48X"]))
end


def test_isbn_with_last_not_X
 	assert_equal(false,check_last_char_x(["978 5 471 48C"]))
end

# def test_isbn_accept_spaces
# assert_equal(true,prepare_isbn("978 0 471 48648 0"))
# end


#  def test_isbn_accept_hiffen
#  assert_equal(true,prepare_isbn("978-0-471-48648-0"))
#  end

# def test_isbn_special_char
#  assert_equal(false,prepare_isbn("970()471-48648-0"))
#  end


end


