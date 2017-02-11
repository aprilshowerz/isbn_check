def valid_isbn?(input_string)
    string_with_no_spaces_and_hyphens = remove_invalid_characters(input_string)
    correct_length?(string_with_no_spaces_and_hyphens)
end

def remove_invalid_characters(input_string)
    no_spaces = input_string.delete(" ")
    no_hyphens = no_spaces.delete("-")
end