require 'autorun/minitest'
require_relative 'isbn.rb'

class ISBN

	def test_valid_isbn_returns_true
		assert_equal(true, valid_isbn?())
	end

end