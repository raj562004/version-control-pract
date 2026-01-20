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

class LinkedList

  def initialize
    @head = nil   
  end


  def insert_at_end(value)

    new_node = Node.new(value)

   
    if @head == nil
      @head = new_node
      return
    end

   
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


puts "Index of 20: #{list.search(20)}"

list.delete(20)
list.display


list.reverse
list.display



