def valid_length?(isbn_number)
	if isbn_number.length == 10 || isbn_number.length == 13
		true
	else
		false
	end
end
def remove_spaces(isbn_number)
	isbn_number.delete" "
end