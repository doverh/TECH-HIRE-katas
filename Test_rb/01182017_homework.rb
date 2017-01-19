
	def using_arrays()
		
		#generate array
		elements = []
	
		#create a loop 1 to 100 to populate the array
		for array_pos in 1..100 do 	 
		
			elements[array_pos - 1] = array_pos			
			num = elements[array_pos - 1]


			# Make the substitutions

			if num % 3 == 0 && num % 5 == 0
				elements[num - 1] = "Mined Minds"

			elsif num % 3 == 0
				elements[num - 1] = "Mined"

			elsif num % 5 == 0
				elements[num - 1] = "Minds"
		
			else
		    	elements[num - 1] = num	

		    end			
			puts elements[num - 1] 	
		end

		elements

	end



