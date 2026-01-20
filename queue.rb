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


class Queue

  def initialize
    @front = nil   
    @rear  = nil   
end



  def enqueue(value)

    new_node = Node.new(value)

    
    if @rear == nil
      @front = new_node
      @rear  = new_node
      return
    end

    @rear.set_next(new_node)
    @rear = new_node
  end


  def is_empty
    return @front == nil
  end




  def dequeue

    if @front == nil
      puts "Queue is empty"
      return nil
    end

    removed_value = @front.get_data
    @front = @front.get_next

    
    if @front == nil
      @rear = nil
    end

    return removed_value
  end

    
  
  def peek

    if @front == nil
      puts "Queue is empty"
      return nil
    end

    return @front.get_data
  end



    
  def display

    if @front == nil
      puts "Queue is empty"
      return
    end

    temp = @front
    while temp != nil
      print temp.get_data
      print " -> "
      temp = temp.get_next
    end

    puts "nil"
  end

end


queue = Queue.new

queue.enqueue(10)
queue.enqueue(20)
queue.enqueue(30)

queue.display


puts "Front element: #{queue.peek}"

puts "Dequeued: #{queue.dequeue}"

queue.display


puts "Is queue empty? #{queue.is_empty}"



