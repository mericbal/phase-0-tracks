
i = 0

puts 'Enter a string for encription ..'
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






i = 0

puts 'Enter a string for decription ..'
string = gets.chomp
alp = 'abcdefghijklmnopqrstuvwxyz'

while i < string.length
  if string[i] == 'a'
    string[i] = 'z'
  elsif string[i] == ' '
    string[i] = ' '
  else
    string[i] = alp[alp.index(string[i])-1]
  end
  i += 1
end

puts string
