
names = [  'Abbott', 'Acevedo','Acosta','Adams', 'Adkins', 'Aguilar', 'Aguirre','Albert', 'Alexander','Alford',
			     'Allen','Allison','Alston','Alvarado','Alvarez','Anderson','Andrews']

def pair_names(names)
		

		names.shuffle
		count_arrays = names.count / 2 +1  # value for number of inner arrays to hold pairs
  		multi_array = Array.new(count_arrays) { Array.new(2) }  # create multi-dimensional arrays for each pair
  			
  		for num1 in 0..count_arrays

  			multi_array[num1-1][num1-1] = names[num1+1]
			multi_array[num1] = names[num1 + 2]
		end
		print multi_array
	end

pair_names(names)
