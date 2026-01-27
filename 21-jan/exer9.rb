
begin
    puts 10/0
rescue 
    puts "Runtime exception"
end


begin
  num = Integer("abc")
  puts 10 / 0
rescue ArgumentError
  puts "Invalid number format"
rescue ZeroDivisionError
  puts "Division by zero"
ensure
    puts "closed"
end


class InvalidAgeError < StandardError
end

def vote(age)
  if age < 18
    raise InvalidAgeError, "Not eligible to vote"
  end
  puts "You can vote"
end

vote(16)


def divide(a, b)
  a / b
rescue ZeroDivisionError
  puts "Cannot divide by zero"
end


divide(2,0)