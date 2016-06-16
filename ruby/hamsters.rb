puts "Hamster's name ?"
name = gets.chomp

puts "What is the volume level of hamster ? 1 to 10 ?"
volume = gets.chomp.to_i

puts "What is the fur color of hamster ?"
color = gets.chomp

puts "Is the hamster good for adoption ?"
adoption = gets.chomp

puts "What is age of the hamster ? If not known , type '?' .. "
age = gets.chomp.to_i
if age == "?"
  age = nil
end

puts "Name >> #{name} + "
puts "Volume level >> #{volume} + "
puts "Color >> #{color} +"
puts "Good for adoption >> #{adoption} +"
puts "Age >> #{age} +"
