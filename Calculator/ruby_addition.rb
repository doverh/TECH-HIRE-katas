

def add(*others)

	result = 0
	others.each do |num|
    	result += num
    	#puts result
    end
    
    puts result
    return result
		
end 

# 	#Test if variables are strings, add and return them
# 	if ((num1.is_a? String) && (num2.is_a? String))  
# 		puts num1 + num2
# 		return num1 + num2

# 	#Test if variables are numbers, add and return them
# 	elsif ((num1.is_a? Numeric) && (num2.is_a? Numeric))  
# 		puts num1 + num2
# 		return num1 + num2

		
# 	else
# 		print "Either #{num1} and #{num2} should be numbers!"
# 	end

# end
