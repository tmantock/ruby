require "./LinkedList"
require "./Queue"

dl = Lists::DoublyLinkedList.new
dl.append(7)
dl.append(0)
dl.prepend(3)
dl.traverse

puts "-----------------------------------"

list = Lists::LinkedList.new

list.append(5)
list.append(6)
list.prepend(70)
list.append(8)

list.traverse
puts "-----------------------------------"
list.reverse

list.traverse

q = Queues::Queue.new

q.enqueue(6)
q.enqueue(7)
q.enqueue(8)
q.enqueue(9)
q.enqueue(10)

q.traverse
puts "-----------------------------------"
q.dequeue
puts "-----------------------------------"
q.traverse

q.size