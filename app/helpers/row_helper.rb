module RowHelper
	def row_split(albums_array)
		if albums_array.nil?
			return @array
		elsif albums_array.length < 5
			@array.push(albums_array)
		else
			# r = rand(2..4)
			new_row = albums_array.take(3)
			@array.push(new_row)
			remaining = albums_array - new_row
			row_split(remaining)
		end
	end
end