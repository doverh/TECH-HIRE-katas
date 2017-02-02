
#Build my string
#return this string
#check X
#check 10 or 13

def check_is_number(isbn)
    
	isbn.each do |isbn_n|
    	isbn_number = isbn_n.delete(' -')

    #check the chars, unless the last
    	for i in (0..isbn_number.to_s.length - 2)
			#Check if char is zero
			if isbn_number[i] == "0"
		 	#if not zero, check if is not a number
		 	elsif !(isbn_number[i].to_i>= 1)
		 	 	print "Break loop #{isbn[i]}"
		 	 	return false
			end
		end
	end
	return true
end

def check_last_char_x(isbn)

	isbn.each do |isbn_n|
    	isbn_number = isbn_n.delete(' -')

		if isbn_number[-1] == 'x' or isbn_number[-1] == 'X'
		
		elsif isbn_number[-1] == "0"
		
		#return false if last char is not X, 0, or Number
		elsif !(isbn_number[-1].to_i>= 1)
		 	print "Break loop #{isbn[-1]}"
			return false	
		else
		
		end
	end
	return true
end
	
#Function to check if number has length allowed to ISBN
def check_lenght(isbn)	
	isbn.each do |isbn_n|
		isbn_number = isbn_n.delete(' -')
			 if isbn_number.length == 10 or isbn_number.length ==13	
				return true
			else
				return false
			end
	end
end

# def prepare_isbn(isbn)
# 	my_isbn = isbn.delete(' -')
# 	check = ""
# 	puts my_isbn	
# 	# isbn.each do |num|
# 	 	for i in (0..my_isbn.length - 1)
# 			if my_isbn[i] == "0"
# 		 		check << my_isbn[i]
# 		 	elsif !(my_isbn[i].to_i>= 1)
# 		 	 	print "Break loop #{isbn[i]}"
# 		 	 	return false
# 		 	else
# 		 		#String instead of array 
# 		 		check << my_isbn[i]
# 		 	end
# 		end
# 		print check
# 		#return the number
# 		return true
# 	#end
# end

# prepare_isbn(" 6-5839&0")


