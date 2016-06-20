
i = 0

puts 'Enter a string ..'
string = gets.chomp

while i < string.length

  if string[i] == ' '
    string[i] = ' '
  elsif string[i] == 'z'
    string[i] = 'a'
  else string[i] = string[i].next
  end

  i += 1
end

puts string
