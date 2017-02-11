require 'minitest/autorun'

require_relative 'isbn_kata.rb'

class TestIsbnChecker < Minitest::Test

 def test_string_without_10_or_13_numbers
        assert_equal(false, valid_isbn?(""))
        assert_equal(false, valid_isbn?("123456789123"))
        assert_equal(false, valid_isbn?("12345678912345"))
    end





end