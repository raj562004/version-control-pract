file = File.open("data.txt", "w")
file.puts "Hello Raj"
file.puts "File handling"
file.close

File.open("data.txt", "w") do |file|
  file.puts "raj ravindra waingankar"
  file.puts "om kumavat"
end

File.open("data.txt", "a") do |file|
  file.puts "Yashraj lad"
end

File.open("data.txt", "r") do |file|
  file.each_line do |line|
    puts line
  end
end


File.open("data.txt", "r") do |file|
  while line = file.gets
    puts line
  end
end

file = File.open("data.txt", "r")
puts file.gets
puts file.gets
file.close


file = File.open("data.txt")

puts file.size
puts file.path
puts file.mtime   

file.close

if File.exist?("data.txt")
  puts "File exists"
else
  puts "File not found"
end

File.rename("data.txt", "info.txt")


File.delete("info.txt")


puts File.readable?("data.txt")
puts File.writable?("data.txt")
puts File.executable?("data.txt")


File.open("students.txt", "a") do |file|
  puts "Enter name:"
  name = gets.chomp

  puts "Enter marks:"
  marks = gets.chomp

  file.puts "#{name}, #{marks}"
end



