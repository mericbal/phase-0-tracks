def encrypt(string)
  i = 0
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
end


def decrypt(string)
  i = 0
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
end






puts 'Hello Agent ! What would you like to do with your password today ? Please say either "Encrypt" or "Decrypt" ..'
answer = gets.chomp.downcase

until (answer == 'e') || (answer == 'd')
  puts 'Please select one of the options .. E or D  ?'
  answer = gets.chomp.downcase
end

if answer == 'e'
  puts 'Encription selected ! Please input the password you would like to encrypt ..'
  string = gets.chomp.downcase
  puts 'Here is your encrypted password ='
  puts encrypt(string)
else answer == 'd'
  puts 'Decryption selected ! Please input the password you would like to decrypt ..'
  string = gets.chomp.downcase
  puts 'Here is your decrypted password ='
  puts decrypt(string)
end

# puts 'Would you like to do anything else ? "Yes" or "No" ?'
# answer2 = gets.chomp.downcase!
# if answer2 == 'yes'
#   puts
