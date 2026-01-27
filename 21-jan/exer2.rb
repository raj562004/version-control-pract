puts "Find perimeter of rectangle : "

puts "Enter length of rectangle : "
length_ = gets.chomp.to_i

puts "Enter breadth of rectangle : "
breadth_ = gets.chomp.to_i

area= length_  *  breadth_

puts "Area of a rectangle with length - #{length_}  and breadth - #{breadth_} is  #{area}"



#Logical Expressions

a = 0
b = 20

c = a || b
d = a && b
e = !a

puts c
puts d
puts e
