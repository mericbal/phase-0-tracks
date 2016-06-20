i = 0

puts 'Enter a string ..'
string = gets.chomp

while i < string.length
  string[i] = string[i].next
  if string[i] == '!'
    string[i] = ' '
  end
  i += 1
end

puts string
