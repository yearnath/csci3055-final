# Nathaniel Yearwood (100559609)
# CSCI3055U Final - Dijkstra's Algorithm


# nodes of graph
class Node

	def initialize (name)
		@name = name
		@edges = []
	end

	# adds edge to this node
	def addEdge (node, dist)
		@edges.push([node, dist])
		node.addOtherEdge(self, dist)
	end

	# used to add edge to other node when called
	def addOtherEdge (node, dist)
		@edges.push([node, dist])
	end

	def to_s
		'Node: '+ @name + '      Edges: ' + @edges.length.to_s
	end

end

#testing nodes
a = Node.new('a')
b = Node.new('b')
a.addEdge(b, 5)
puts a
puts b



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

# puts test