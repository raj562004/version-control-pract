puts "Enter limit :"
limit = gets.chomp.to_i

i=1
while i <= limit
    puts i
    i+=1
end

puts " "
i=1
until i>limit
    puts i
    i=i+1
end




sum=0

for x in 1..limit
    sum+=x
end

puts "sum of 1 to #{limit}  is  #{sum}"


