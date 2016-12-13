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

# puts test

# nodes on graph
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

	def setDist (dist)
		@dist = dist
	end

	def dist
		@dist
	end

	def setPrev (prev)
		@prev = prev
	end

	def prev
		@prev
	end

	#accessor for name
	def name
		@name
	end

	#accessor for edges
	def edges
		@edges
	end

	def to_s
		'Node: '+ @name + '      Edges: ' + @edges.length.to_s
	end

end


def djk(graph, start)

	q = []
	inf = 1.0/0.0

	#alters graph list to include dist from start
	for i in 0.. graph.length-1

		#gives more information on each node
		graph[i].setDist(inf)
		graph[i].setPrev('none')

		start.setDist(0)

		#creates list of nodes for calculation
		q.push(graph[i])
	end


	while q.length > 0
		
		shortestDist = inf
		
		#finds closest node
		for x in q
			if x.dist < shortestDist
				shortestDist = x.dist
				u = x
			end
		end
		puts q, "\n"
		q.delete(u)
		puts q, "\n\n\n"

		
		for v in u.edges
			if q.include?(v[0])

				alt = u.dist + v[1]

				if alt < v[1]
					v.setDist = alt
					v.setPrev = u
				end
			end
		end

	end

	puts start.prev
end


graph = []
#creates nodes and adds them to graph list
graph.push(a = Node.new('a'))
graph.push(b = Node.new('b'))
graph.push(c = Node.new('c'))
graph.push(d = Node.new('d'))
graph.push(e = Node.new('e'))
graph.push(f = Node.new('f'))
graph.push(g = Node.new('g'))

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
djk(graph, a)