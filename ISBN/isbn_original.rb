
def check_is_number(isbn)
    
	isbn.each do |isbn_n|
    	isbn_number = isbn_n.delete(' -')

    #check the chars, unless the last
    	for i in (0..isbn_number.to_s.length - 2)
		# stringname.count("^0-9").zero?  it returns FALSE (indicating a bad ISBN) if stringname contains any characters not (^) equal to zero through nine.   stringname.count("^0-9xX").zero? also allows for the letter in upper or lowercase.

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

def check_isbn_10(isbn)

	isbn.each do |isbn_number|
		total = 0
		for i in (0..isbn_number.to_s.length - 2)
			#puts isbn_number[i].to_i
			#puts "isbn_number[i] = #{isbn_number[i].to_i * (i+1)}"
			total += isbn_number[i].to_i * (i+1)
		end
		puts "Total = #{total%11}"
		#puts "last = #{isbn_number[-1]}"
		#total = total % 11 
		check_number = isbn_number[-1]
		if (check_number=='x' || check_number=='X') && (total % 11 == 10)
			break
		elsif  (total % 11 != isbn_number[-1].to_i)
			return false 	
		end
	end	
	return true
end

def check_isbn_13(isbn)

	isbn.each do |isbn_number|
		total = 0
		for i in (0..isbn_number.to_s.length - 2)
			
			if (i) % 2 == 0
				total += isbn_number[i].to_i 
			#puts "isbn_number[i]  = #{isbn_number[i].to_i}"
			else
				total += isbn_number[i].to_i * 3
				#puts "isbn_number[i] = #{isbn_number[i].to_i * 3}"
			end
		end
	
		#puts "Total isbn 13 = #{total}"
		#taking modulo 10 of the result and subtracting this value from 10
		total = 10 -(total % 10) 
		#puts "last = #{isbn_number[-1]}"
		
		#Take total % 10 to have the last number
		if  total % 10 != isbn_number[-1].to_i
			return false 	
		end
	end	
	return true
end