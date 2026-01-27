begin

puts "Enter the number"

input= gets.chomp

num = Integer(input)

puts "Result : #{100 / num}"

rescue ArgumentError
    puts "Invalid input !! plz enter number"

rescue ZeroDivisionError
    puts "Divide by zero"

ensure
    puts "Program ended"

end

