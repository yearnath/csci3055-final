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

#creates nodes
a = Node.new('a')
b = Node.new('b')
c = Node.new('c')
d = Node.new('d')
e = Node.new('e')
f = Node.new('f')
g = Node.new('g')

#links nodes bidirectionally as weighted edges
a.addEdge(b, 4)
a.addEdge(c, 3)
a.addEdge(e, 7)

b.addEdge(c, 6)
b.addEdge(d, 5)

c.addEdge(d, 11)
c.addEdge(e, 8)

d.addEdge(e, 2)
d.addEdge(f, 2)
d.addEdge(g, 10)

e.addEdge(g, 5)

f.addEdge(g, 3)

#prints nodes and number of edges to verify
puts a
puts b
puts c
puts d
puts e
puts f
puts g


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