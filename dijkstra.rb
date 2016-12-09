# Nathaniel Yearwood (100559609)
# CSCI3055U Final - Dijkstra's Algorithm


test = [5, 7, 3, 1, 9, 4]
def sort (list) #function to sort list of given numbers
	list.each do
		for i in 0..list.length-2
			if list[i] > list[i+1]
				list[i], list[i+1] = list[i+1], list[i]
			end
		end
	end
	return list
end

test = sort(test)

puts test