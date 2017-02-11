def valid_isbn?(input_string)
    string_with_no_spaces_and_hyphens = remove_invalid_characters(input_string)
    correct_length?(string_with_no_spaces_and_hyphens)
end

def remove_invalid_characters(input_string)
    no_spaces = input_string.delete(" ")
    no_hyphens = no_spaces.delete("-")
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


