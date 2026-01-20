class Node

  # constructor
  def initialize(data)
    @data = data      # stores value
    @next = nil       # stores reference to next node
  end

  # getter for data
  def get_data
    @data
  end

  # setter for data
  def set_data(value)
    @data = value
  end

  # getter for next
  def get_next
    @next
  end

  # setter for next
  def set_next(node)
    @next = node
  end

end

class LinkedList

  def initialize
    @head = nil   # head of linked list
  end


  def insert_at_end(value)

    new_node = Node.new(value)

    # if list is empty
    if @head == nil
      @head = new_node
      return
    end

    # traverse till last node
    temp = @head
    while temp.get_next != nil
      temp = temp.get_next
    end

    temp.set_next(new_node)
  end


  def display

    if @head == nil
      puts "List is empty"
      return
    end

    temp = @head
    while temp != nil
      print temp.get_data
      print " -> "
      temp = temp.get_next
    end

    puts "nil"
  end


  def delete(value)

    if @head == nil
      puts "List is empty"
      return
    end

    # delete head
    if @head.get_data == value
      @head = @head.get_next
      return
    end

    temp = @head
    while temp.get_next != nil && temp.get_next.get_data != value
      temp = temp.get_next
    end

    if temp.get_next == nil
      puts "Value not found"
    else
      temp.set_next(temp.get_next.get_next)
    end
  end


  def search(value)

    temp = @head
    index = 0

    while temp != nil
      if temp.get_data == value
        return index
      end
      temp = temp.get_next
      index += 1
    end

    return -1
  end


  def reverse

    prev = nil
    current = @head

    while current != nil
      next_node = current.get_next
      current.set_next(prev)
      prev = current
      current = next_node
    end

    @head = prev
  end

end


list = LinkedList.new

list.insert_at_end(10)
list.insert_at_end(20)
list.insert_at_end(30)

list.display
# 10 -> 20 -> 30 -> nil

puts "Index of 20: #{list.search(20)}"

list.delete(20)
list.display
# 10 -> 30 -> nil

list.reverse
list.display
# 30 -> 10 -> nil


