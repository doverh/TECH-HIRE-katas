#Working version

#create array of names
names = [  'Abbott', 'Acevedo','Acosta','Adams', 'Adkins', 'Aguilar', 'Aguirre','Albert', 'Alexander','Alford',
			     'Allen','Allison','Alston','Alvarado','Alvarez','Anderson','Andrews']

def pair_names(names)

	#create an empty array
	my_array = []

	# Shuffle names and slice each 2
	multi_array = names.shuffle.each_slice(2)
		
  	#OLD - multi_array = Array.new(count_arrays) { Array.new(2) }  # create multi-dimensional arrays for each pair
  	multi_array.each do |pairs|
   	   	if pairs.length == 2
    		my_array.push(pairs)
    	else
    		my_array.last.push(pairs[0])
    	end
  	end
	print my_array
	my_array
end

pair_names(names)



