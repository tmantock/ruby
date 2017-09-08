module Lists
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

	class LinkedList
		def initialize
			@head = nil
		end

		def append(val)
			node = Node.new(val)

			if @head.nil?
				@head = node
			else
				current = @head
				while !current.getNext.nil?
					current = current.getNext
				end
				current.setNext(node)
			end
		end

		def prepend(val)
			node = Node.new(val)

			if @head.nil?
				@head = node
			else
				node.setNext(@head)
				@head = node
			end
		end

		def reverse
			if !@head.nil?
				current = @head.getNext
				prev = @head

				prev.setNext(nil)

				while !current.nil?
					temp = current.getNext
					current.setNext(prev)
					prev = current
					current = temp
				end

				@head = prev
			end
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
end