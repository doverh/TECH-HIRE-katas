#Function to check if number has length allowed to ISBN10 and ISBN13
def sanitize_isbn(isbn)
	isbn_n = isbn.delete(' -')# alternative could be gsub(/[-\s+]/, "") 
	return isbn_n
end	

def check_length(isbn)	
		number = sanitize_isbn(isbn) 
			 if (number.length == 10)	
				check_number_isbn10(isbn)
			 elsif (number.length ==13)
			 	check_number_isbn13(isbn)
			 else
			 	return false
			 end
end


def check_number_isbn10(isbn)
#Function receive an array of numbers and check if they are ISBN    

	#isbn.each do |isbn_n|
    	#Delete spaces and hifens
    	number = isbn.delete(' -') #Alternative could be .gsub(/[-\s+]/, "") 
    	#Separate last digit to check if is X or x
    		isbn_number = number[0..8]
    		isbn_digit = number[9]

    		if (isbn_number.count("^0-9").zero? && isbn_digit.count("^0-9xX").zero?)
    			return check_sum_10(isbn)
    		else
    			return false
    		end
	
end


def check_sum_10(isbn)

	#isbn.each do |isbn_number|
		total = 0
		position = 1
		isbn[0..8].each_char do |calc_num|
			total += calc_num.to_i * position
			position +=1
		end
		total = total % 11
		#puts "Total ISBN 10 = #{total}" 
		if ((isbn[9] == 'X' || isbn[9] == 'x')  && total == 10)
			return true
		elsif (isbn[9].to_i == total)
			return true
		else
			return false
		end
	#end	
	
end

	
def check_number_isbn13(isbn)
#Function receive an array of numbers and check if they are ISBN    

	#isbn.each do |isbn_n|
    	#Delete spaces and hifens
    	number = isbn.delete(' -')
    	#Separate last digit to check if is X or x
    		if number.count("^0-9").zero?
    			return check_sum_13(isbn)
    		else
    			return false
    		end
end


def check_sum_13(isbn)

	#isbn.each do |isbn_number|
		total = 0
		position = 1
		isbn[0..11].each_char do |calc_num|
			position.even? ? total += calc_num.to_i * 3 : total += calc_num.to_i * 1
			#puts "position: #{position}"
			#puts "total: #{total}"
						position +=1
					end
			
		total = (10 - (total % 10)) % 10
		#puts "Total = #{total}"
		#puts "last = #{isbn_number[12]}"
		
		if (total == isbn[12].to_i)
			return true		
		else 
			return false
		end	

	#end
	
end

def results(isbn)
	result = check_length(isbn)
	if result == true
		results="THIS IS A VALID ISBN"
	else
		results= "THIS IS AN INVALID ISBN" 
	end
	return results
end	

#results('978 5 471 486')



#print "Insert you ISBN"
#	gets.chomp.to_s


