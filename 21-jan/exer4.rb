puts "Enter the number :"

num = gets.chomp.to_i

puts "Square of the #{num} is : #{num ** 2}"


if num.even?
    puts "even number"
else
    puts "odd number"
end

checker = Proc.new do |num|
  puts num.even? ? "even" : "odd"
end

checker.call(10)
checker.call(15)
