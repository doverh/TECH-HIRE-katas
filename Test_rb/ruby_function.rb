

def add(num1, num2)
	if ((num1.is_a? Numeric) && (num2.is_a? Numeric))  
		puts num1 + num2
		return num1 + num2
	else
		print "Either num1:#{num1} and num2:#{num2} should be numbers!"
	end

end

