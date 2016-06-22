# User interface

client_1 = {
  name: 'meric',
  address: '408',
  age: 31,
  phone: 707,
  children: 0,
  decor: 'blue',
  firepit: true,
  wooden: false,
}

puts 'Your name ?'
name = gets.chomp.downcase
puts 'How old are you ?'
age = gets.chomp.to_i
puts 'Your address ?'
address = gets.chomp.downcase
puts 'Phone number ?'
phone = gets.chomp.to_i
puts 'Any children ? if yes , how many ?'
children = gets.chomp.downcase
puts 'Decor color ?'
decor = gets.chomp.downcase
puts 'firepit ?'
firepit = gets.chomp.downcase
puts 'Wooden floor ?'
wooden = gets.chomp.downcase
