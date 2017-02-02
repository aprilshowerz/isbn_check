require 'minitest/autorun'
require_relative 'isbn_check.rb'

class ISBN_function < Minitest::Test

#testing string length. If length is 10, return true.
	def test_valid_isbn_length_returns_true
		isbn_number = '1234567890'
		assert_equal(true, valid_length?(isbn_number))
	end
#testing string length. If length is 9, return false.
	def test_valid_isbn_length_returns_false
		isbn_number = '123456789'
		assert_equal(false, valid_length?(isbn_number))
	end
#testing string length, characters don't matter, return false.
	def test_valid_isbn_length_returns_true_for_any_length_or_characters
		isbn_number = '1234X6789'
		assert_equal(false, valid_length?(isbn_number))
	end
#testing function that removes spaces.
	def test_remove_spaces
		isbn_number = '123 4X67 890'
		assert_equal('1234X67890', remove_spaces(isbn_number))
	end
#testing function that removes dashes and spaces.
	def test_remove_dashes_spaces
		isbn_number = '123-4X67 890'
		assert_equal('1234X67890', remove_dashes_spaces(isbn_number))
	end
#testing function that 






end