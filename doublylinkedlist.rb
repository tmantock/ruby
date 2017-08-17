class Node
	def initialize(data, prev_node = nil, next_node = nil)
		@data = data
		@prev_node = prev_node
		@next_node = next_node
	end

	def getNext
		@next_node
	end

	def getPrev
		@prev_node
	end

	def getData
		@data
	end

	def setData(data)
		@data = data
	end

	def setPrev(node)
		@prev_node = node
	end

	def setNext(node)
		@next_node = node
	end
end

class DoublyLinkedList
	def initialize
		@head = nil
		@tail = nil
	end

	def append(data)
		node = Node.new(data)
		if @head.nil?
			@head = node
			return
		end

		if !@head.nil? and @tail.nil?
			@tail = node
			@tail.setPrev(@head)
			@head.setNext(@tail)
			return
		end

		@tail.setNext(node)
		@tail = node
	end

	def prepend(data)
		node = Node.new(data)
		if @head.nil?
			@head = node
		end

		node.setNext(@head)
		@head.setPrev(node)
		@head = node
	end

	def traverse
		if !@head.nil?
			current = @head
			while !current.nil?
				puts current.getData
				current = current.getNext
			end
		end
	end
end

dl = DoublyLinkedList.new
dl.append(7)
dl.append(0)
dl.prepend(3)
dl.traverse
