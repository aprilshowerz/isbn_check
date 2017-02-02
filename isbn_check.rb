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

def check_for_letters(letters)
	
	!!letters.match(/[a-z A-Z]/) #!! returns true or false
	
	#or
	#if 
	#letters.match(/[a-z A-Z]/)
	# => false
	#else
	#true
	#end
end

def check_for_x(x_at_end)

	x_at_end.upcase

	if x_at_end[-1].match(/[0-9 x X]/)
		true
	else
		false
	end

	#or

	# if x_at_end[-1] == 'X' || x_at_end[-1] == [0..9]
	# 	true
	# else
	# 	false
	# end

end