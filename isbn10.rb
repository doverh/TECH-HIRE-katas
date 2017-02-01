

def prepare_isbn(isbn)
	my_isbn = isbn.delete(' -')
	check = []
	puts my_isbn	
	# isbn.each do |num|
	 	for i in (0..my_isbn.length - 1)
			if my_isbn[i] == "0"
		 		check.push(my_isbn[i])
		 	elsif !(my_isbn[i].to_i>= 1)
		 	 	print "Break loop #{isbn[i]}"
		 	 	return false
		 	else
		 		check.push(my_isbn[i])
		 	end
		end
		print check
		return true
	#end
end

prepare_isbn(" 6-5839&0")


