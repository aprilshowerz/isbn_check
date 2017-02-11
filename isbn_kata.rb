def valid_isbn?(input_string)
    string_with_no_spaces_and_hyphens = remove_invalid_characters(input_string)
    correct_length?(string_with_no_spaces_and_hyphens)
end

def remove_invalid_characters(input_string)
    no_spaces = input_string.delete(" ")
    no_hyphens = no_spaces.delete("-")
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

def isbn_10_mod_11(number)
    checksum = number%11
end

def isbn_10_math?(number)
    sum = isbn_10(number)
    checksum = isbn_10_mod_11(sum)
    
    if checksum == 10 && number[-1].upcase == "X"
        true
    elsif checksum == number[-1].to_i
        true
    else    
        false
    end    
end

