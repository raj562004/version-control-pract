class Node

  def initialize(data, priority)
    @data = data
    @priority = priority
    @next = nil
  end

  def get_data
    @data
  end

  def get_priority
    @priority
  end

  def get_next
    @next
  end

  def set_next(node)
    @next = node
  end

end

class PriorityQueue

  def initialize
    @head = nil   
  end


  def enqueue(value, priority)

    new_node = Node.new(value, priority)

    
    if @head == nil || priority > @head.get_priority
      new_node.set_next(@head)
      @head = new_node
      return
    end

    temp = @head

    
    while temp.get_next != nil &&
          temp.get_next.get_priority >= priority
      temp = temp.get_next
    end

    new_node.set_next(temp.get_next)
    temp.set_next(new_node)
  end


  def dequeue

    if @head == nil
      puts "Priority Queue is empty"
      return nil
    end

    removed_value = @head.get_data
    @head = @head.get_next

    return removed_value
  end


  def peek

    if @head == nil
      puts "Priority Queue is empty"
      return nil
    end

    return @head.get_data
  end


  
  def is_empty
    return @head == nil
  end


  def display

    if @head == nil
      puts "Priority Queue is empty"
      return
    end

    temp = @head
    while temp != nil
      print "("
      print temp.get_data
      print ", priority "
      print temp.get_priority
      print ") -> "
      temp = temp.get_next
    end

    puts "nil"
  end

end


pq = PriorityQueue.new

pq.enqueue("Task A", 1)
pq.enqueue("Task B", 3)
pq.enqueue("Task C", 2)
pq.enqueue("Task D", 3)

pq.display


puts "Peek: #{pq.peek}"

puts "Dequeued: #{pq.dequeue}"

pq.display


