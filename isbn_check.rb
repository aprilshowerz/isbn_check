def valid_length?(isbn_number)
	if isbn_number.length == 10 || isbn_number.length == 13
		true
	else
		false
	end
end

#remove spaces only.
def remove_spaces(isbn_number)
	isbn_number.delete" "
	# or isbn_number.delete(" ")
end

def remove_dashes_spaces(isbn_number)

		isbn_number.delete! (" " "-")

		# or

		# isbn_number.delete! ("-")
		# isbn_number.delete! (" ")
		 	# exclamation point (!) makes perminent

		#or

		#use gsub to substitute one thing for another.
		# isbn_number.gsub(/[ -]/ "")
		
end