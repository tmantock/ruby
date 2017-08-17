class Node
    attr_accessor :val, :next_node
    def initialize(val, next_node = nil)
        @val = val
        @next_node = next_node
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
            while !current.next_node.nil?
                current = current.next_node
            end
            current.next_node = node
        end
    end

    def prepend(val)
        node = Node.new(val)

        if @head.nil?
            @head = node
        else
            node.next_node = @head
            @head = node
        end
    end

    def traverse
        if !@head.nil?
            current = @head
            while !current.nil?
                puts current.val
                current = current.next_node
            end
        end
    end
end

list = LinkedList.new

list.append(5)
list.append(6)
list.prepend(70)
list.append(8)

list.traverse