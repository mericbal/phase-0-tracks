# User interface

puts 'Your name ?'
name = gets.chomp.downcase
puts 'How old are you ?'
age = gets.chomp.to_i
puts 'Your address ?'
address = gets.chomp.downcase
puts 'Phone number ?'
phone = gets.chomp.to_i
puts 'Number of children ?'
children = gets.chomp.downcase
puts 'Decor color ?'
decor = gets.chomp.downcase

puts 'Wants firepit ?'
firepit = gets.chomp.downcase
if firepit == 'yes'
  firepit = true
  else firepit == 'no'
  firepit = false
end

puts 'Wants wooden floor ?'
wooden = gets.chomp.downcase
if wooden == 'yes'
  wooden = true
  else wooden == 'no'
  wooden = false
end

client_1 = {
  name: name,
  address: address,
  age: age,
  phone: phone,
  children: children,
  decor: decor,
  firepit: firepit,
  wooden: wooden,
}

puts client_1

puts 'Would you like to change your decor theme ?'
answer = gets.chomp.downcase
if answer == 'yes'
  puts 'Which color ?'
  client_1[:decor] = gets.chomp.downcase
else answer == 'no'
end

puts client_1
