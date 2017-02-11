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

    def correct_length?(input_string)
    if input_string.length == 10 && contains_non_numerical_characters?(input_string[0...8]) == false
        isbn_10_math?(input_string)
    elsif input_string.length == 13 && contains_non_numerical_characters?(input_string) == false
        isbn13_math?(input_string)

    else    
        false
    end
end   

def isbn_10(string)
    sum = 0
    isbn_array_10 = convert_string_to_array(string)
    isbn_array_10.each_with_index do |value, index|
     value = value.to_i
     break if index == 9
     sum += value * (index + 1)
    end
    sum
end

end