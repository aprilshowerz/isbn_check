require 'minitest/autorun'

require_relative 'isbn_kata.rb'

class TestIsbnChecker < Minitest::Test

 def test_string_without_10_or_13_numbers
        assert_equal(false, valid_isbn?(""))
        assert_equal(false, valid_isbn?("123456789123"))
        assert_equal(false, valid_isbn?("12345678912345"))
end

def test_valid_isbn10_returns_true
        assert_equal(true, valid_isbn?("0471958697"))
end

def test_valid_isbn10_with_spaces_returns_true
        assert_equal(true, valid_isbn?("047 1958 697"))
end

def test_valid_isbn10_with_hyphens_returns_true
        assert_equal(true, valid_isbn?("0-321-14653-0"))
end

def test_valid_isbn10_with_spaces_and_hyphens_returns_true
        assert_equal(true, valid_isbn?(" 047-1958 697-"))
end

def test_valid_isbn13_returns_true
        assert_equal(true, valid_isbn?("9780470059029"))
end

def test_valid_isbn13_with_spaces_and_hyphens_returns_true
        assert_equal(true, valid_isbn?("-9  7---80470059029"))
        assert_equal(true, valid_isbn?("978-0-13-149505-0"))
        assert_equal(true, valid_isbn?("978 0 471 48648 0"))
end


end