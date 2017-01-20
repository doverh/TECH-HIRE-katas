#Incomplete version


names = [  'Abbott', 'Acevedo','Acosta','Adams', 'Adkins', 'Aguilar', 'Aguirre','Albert', 'Alexander','Alford',
			     'Allen','Allison','Alston','Alvarado','Alvarez','Anderson','Andrews']

def pair_names(names)
		

		# names.shuffle
		puts names.count/2 + 1
		count_arrays = names.count / 2 +1  # value for number of inner arrays to hold pairs
		puts count_arrays

  		multi_array = Array.new(count_arrays) { Array.new(2) }  # create multi-dimensional arrays for each pair

  		puts multi_array.inspect	

  		for num1 in 0..count_arrays

  			multi_array.push = names.pop
			multi_array[num1] = names.pop
		end
		print multi_array
	end

pair_names(names)
