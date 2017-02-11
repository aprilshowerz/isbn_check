def valid13isbn?(isbn_string)

	#takes a string and returns a boolean.
	isbn13_array = isbn_string.split('').map(&:to_i)
	# isbn13_array_integer = []
	# isbn13_array.each do |item|
	# isbn13_array_integer << item.to_i
	# end

	 # p isbn13_array_integer

	sum = 0
	check_digit = 0
		isbn13_array.each_with_index do |value, index|
			break if index == 12
			if index % 2 == 0 
				sum += value * 1
			else
				sum += value * 3
			end
		end
	sum = sum % 10
	check_digit = 10 - sum
		if check_digit == 10
			check_digit = 0
		end
	isbn13_array[12] == check_digit
end


def check_valid_isbn?(isbn_num)
	valid = false
	isbn_new = remove_spaces_hyphens(isbn_num)
	if isbn_new.length == 10
		if combined_isbn_ten?(isbn_new)
			valid = true
		end
	else isbn_new.length == 13
		if combined_isbn_13?(isbn_new)
			valid = true
		end
	end
end


def valid_isbn?(isbn_string)
	# replace a zero with illegal char, gives false positive.

	# takes in string, returns boolean	
	isbn_string_no_spaces_or_dashes = remove_spaces_and_dashes(isbn_string)
		if isbn_string_no_spaces_or_dashes.length == 10
			check_for_letters(isbn_string_no_spaces_or_dashes)
			check_for_symbols(isbn_string_no_spaces_or_dashes)
			check_for_x(isbn_string_no_spaces_or_dashes)
			compare_check_digit(isbn_string_no_spaces_or_dashes)
		else
			false
		end
			
end