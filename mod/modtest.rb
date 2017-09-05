require "./LinkedList"

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