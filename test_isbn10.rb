# Requirements
# - Takes a string
# - Check for invalid chars
# - Accept X on last position
# - Return true or false
# - Check position of string 

require "minitest/autorun"
require_relative "isbn10.rb"

class TestIsbn < Minitest::Test

def test_isbn_accept_spaces
assert_equal(true,prepare_isbn("978 0 471 48648 0"))
end


 def test_isbn_accept_hiffen
 assert_equal(true,prepare_isbn("978-0-471-48648-0"))
 end

def test_isbn_special_char
 assert_equal(false,prepare_isbn("970()471-48648-0"))
 end


end


