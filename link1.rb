class LinkedListNode
  attr_accessor :value, :next_node
 
  def initialize(value, next_node=nil)
    @value = value
    @next_node = next_node
  end
end


class Stack
    attr_reader :data
    
    def initialize
        @data = nil
    end

    # Push an item onto the stack
    def push(element)
        @data = LinkedListNode.new(element, @data)   
    end

    # Pop an item off the stack.  
    # Remove the last item that was pushed onto the
    # stack and return it to the user
    def pop
        if @data.nil?
            nil
        else 
            temp = @data
            @data = @data.next_node 
            temp
        end
    end
end


def print_values(list_node)
  print "#{list_node.value} --> "
  if list_node.next_node.nil?
    print "nil\n"
    return
  else
    print_values(list_node.next_node)
  end
end


def reverse_list(list)
    my_stack = Stack.new

    while list
        my_stack.push(list.value)
        list = list.next_node
    end

    my_stack.pop
end

node1 = LinkedListNode.new(37)
node2 = LinkedListNode.new(99, node1)
node3 = LinkedListNode.new(12, node2)

print_values(node3)

puts "-------"

revlist = reverse_list(node3)

print_values(revlist)
