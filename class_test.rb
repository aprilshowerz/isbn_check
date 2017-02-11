require 'minitest/autorun'
require_relative 'class_isbn.rb'

class Test_ISBN_13 < Minitest::Test

	def test_valid_13_isbn
		isbn13 = '9780470059029'
		assert_equal(true, valid13isbn?(isbn13))

	end

	def test_isbn13_invalid
		isbn13 = '9780470059029'
		assert_equal(false, valid13isbn?(isbn13))
	end



	def test_valid_10_digit_main
		isbn_num = '9182736450'
		assert_equal(true, valid_isbn?(isbn_num))
	end

	def test_invalid_isbn_10_digit_returns_false_main
		isbn_num = '047-958697'
		assert_equal(false, valid_isbn?(isbn_num))
	end

	def test_invalid_isbn_10_symbols_main
		isbn_num = '047&958697'
		assert_equal(false, valid_isbn?(isbn_num))
	end

	def test_valid_isbn_10_x_main
		isbn_num = '877195869x'
		assert_equal(true, valid_isbn?(isbn_num))
	end

	def test_valid_isbn_10_x_main_2
		isbn_num = '877 19-58 69X'
		assert_equal(true, valid_isbn?(isbn_num))
	end

	def test_valid_isbn_10_illegal_chars_main
		isbn_num = '0294566082'
		assert_equal(false, valid_isbn?(isbn_num))
	end

end


