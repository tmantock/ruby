module Queues
    class Node
        def initialize(data, next_node = nil)
            @data = setData(data)
            @next_node = setNext(next_node)
        end

        def getData
            @data
        end

        def getNext
            @next_node
        end

        def setData(data)
            @data = data
        end

        def setNext(next_node)
            @next_node = next_node
        end
    end

    class Queue
        def initialize
            @limit = 100
            @size = 0
            @head = nil
        end

        def enqueue(data)
            if @head.nil?
                @head = Node.new(data)
            else
                current = @head

                while(not current.getNext.nil?)
                    current = current.getNext
                end

                current.setNext(Node.new(data))
            end

            @size += 1
        end

        def dequeue
            if not @head.nil? and @size > 0
                head = @head
                @head = @head.getNext
                @size -= 1
                return head
            end
        end

        def peek
            @head.getData
        end

        def traverse
            current = @head

            while not current.nil?
                puts current.getData
                current = current.getNext
            end
        end

        def size
            puts "#{@size} out of #{@limit}"
        end
    end
end