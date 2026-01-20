class Node

  def initialize(data)
    @data = data
    @next = nil
  end

  def get_data
    @data
  end

  def set_data(value)
    @data = value
  end

  def get_next
    @next
  end

  def set_next(node)
    @next = node
  end

end


class Stack

  def initialize
    @top = nil   # top of stack
  end


  def push(value)

    new_node = Node.new(value)

    # new node points to current top
    new_node.set_next(@top)

    # update top
    @top = new_node
  end


  def pop

    if @top == nil
      puts "Stack is empty"
      return nil
    end

    popped_value = @top.get_data
    @top = @top.get_next

    return popped_value
  end


  def peek

    if @top == nil
      puts "Stack is empty"
      return nil
    end

    return @top.get_data
  end


  def is_empty
    return @top == nil
  end



  def display

    if @top == nil
      puts "Stack is empty"
      return
    end

    temp = @top
    while temp != nil
      print temp.get_data
      print " -> "
      temp = temp.get_next
    end

    puts "nil"
  end

end


stack = Stack.new

stack.push(10)
stack.push(20)
stack.push(30)

stack.display
# 30 -> 20 -> 10 -> nil

puts "Top element: #{stack.peek}"

puts "Popped: #{stack.pop}"

stack.display
# 20 -> 10 -> nil

puts "Is stack empty? #{stack.is_empty}"
