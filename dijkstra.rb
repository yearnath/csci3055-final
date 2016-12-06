list = [6, 3, 5, 1, 2, 1, 4]

puts list

list.each do
	for i in 0..list.length-2
		if list[i] > list[i+1]
			list[i], list[i+1] = list[i+1], list[i]
		end
	end
end


puts "\nSorted:\n", list