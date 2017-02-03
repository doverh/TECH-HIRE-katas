def check_number_isbn10(isbn)
#Function receive an array of numbers and check if they are ISBN    

	isbn.each do |isbn_n|
    	#Delete spaces and hifens
    	number = isbn_n.delete(' -')
    	#Separate last digit to check if is X or x
    		isbn_number = number[0..8]
    		isbn_digit = number[9]

    		if (isbn_number.count("^0-9").zero? && isbn_digit.count("^0-9xX").zero?)
    			#go to next ISBN
    		else
    			return false
    		end
    end
	return true
end
	
def check_number_isbn13(isbn)
#Function receive an array of numbers and check if they are ISBN    

	isbn.each do |isbn_n|
    	#Delete spaces and hifens
    	number = isbn_n.delete(' -')
    	#Separate last digit to check if is X or x
    		if number.count("^0-9").zero?
    			#go to next ISBN
    		else
    			return false
    		end
    end
	return true
end


	
#Function to check if number has length allowed to ISBN10 and ISBN13
def check_length(isbn)	
	isbn.each do |isbn_n|
		isbn_number = isbn_n.delete(' -')
			 if !(isbn_number.length == 10 or isbn_number.length ==13)	
				return false
			 end
	end
	return true
end

# def check_isbn_10(isbn)

# 	isbn.each do |isbn_number|
# 		total = 0
# 		for i in (0..isbn_number.to_s.length - 2)
# 			#puts isbn_number[i].to_i
# 			#puts "isbn_number[i] = #{isbn_number[i].to_i * (i+1)}"
# 			total += isbn_number[i].to_i * (i+1)
# 		end
# 		puts "Total = #{total%11}"
# 		#puts "last = #{isbn_number[-1]}"
# 		#total = total % 11 
# 		check_number = isbn_number[-1]
# 		if (check_number=='x' || check_number=='X') && (total % 11 == 10)
# 			break
# 		elsif  (total % 11 != isbn_number[-1].to_i)
# 			return false 	
# 		end
# 	end	
# 	return true
# end

# def check_isbn_13(isbn)

# 	isbn.each do |isbn_number|
# 		total = 0
# 		for i in (0..isbn_number.to_s.length - 2)
			
# 			if (i) % 2 == 0
# 				total += isbn_number[i].to_i 
# 			#puts "isbn_number[i]  = #{isbn_number[i].to_i}"
# 			else
# 				total += isbn_number[i].to_i * 3
# 				#puts "isbn_number[i] = #{isbn_number[i].to_i * 3}"
# 			end
# 		end
	
# 		#puts "Total isbn 13 = #{total}"
# 		#taking modulo 10 of the result and subtracting this value from 10
# 		total = 10 -(total % 10) 
# 		#puts "last = #{isbn_number[-1]}"
		
# 		#Take total % 10 to have the last number
# 		if  total % 10 != isbn_number[-1].to_i
# 			return false 	
# 		end
# 	end	
# 	return true
# end