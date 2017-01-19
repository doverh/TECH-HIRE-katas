class Numbers

	Numbers n = new Numbers()
	n.minedmindskata(1)

	def minedmindskata(num)

	  if (num >=  1 && num <= 100)

		if num % 3 == 0 && num % 5 == 0
			"Mined Minds"

		elsif num % 3 == 0
			"Mined"

		elsif num % 5 == 0
			"Minds"
		
		else
		    num
		end		

	  end	

	end

