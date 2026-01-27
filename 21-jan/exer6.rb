puts "Enter 5 fruits :"

fruits =[]

5. times do 
    puts "Enter fruit name : "
    fruit= gets.chomp
    fruits.push(fruit)
end

puts "display all fruits : "

for fruit in fruits
    puts fruit
end


#####                    HASHES

person = {
    "name" => "Raj",
    "age" => 21,
    "blood_grp" => "B+",
    "gender" =>"male",
    "height" => 176,
    "weight "=> 60
}

person.each do |key,value|
    puts " #{key}  - >  #{value}"
end



books = {}

puts "Enter number of books:"
n = gets.to_i

i = 1
while i <= n
  puts "Enter book title:"
  title = gets.chomp

  puts "Enter author:"
  author = gets.chomp

  puts "Enter price:"
  price = gets.to_i

  books[i] = { title: title, author: author, price: price }

  i += 1
end

puts books

puts books[1][:title]
puts books[1][:author]
puts books[1][:price]


students = {
  1 => { name: "Raj", marks: 80 },
  2 => { name: "om", marks: 90 }
}

puts students[1][:name]
puts students[2][:marks]
