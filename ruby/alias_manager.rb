agent_x = {
        first: '',
        last: '',
        fake_f: '',
        fake_l: '',
}



puts 'Enter the first name ?'
first_name = gets.chomp.downcase
agent_x[:first] = first_name
puts 'Enter the last name ?'
last_name = gets.chomp.downcase
agent_x[:last] = last_name



puts agent_x[:first]
puts agent_x[:last]


def mixer(string)
    letters = string.split('')
    letters.map! do |harf|
                    if harf == 'a'
                        harf = 'e'
                    elsif harf == 'e'
                        harf = 'i'
                    elsif harf == 'i'
                        harf = 'o'
                    elsif harf == 'o'
                        harf = 'u'
                    elsif harf == 'u'
                        harf = 'a'
                    elsif harf == 't'
                        harf = 'v'
                    else
                    harf.next
                    end
                end
    p letters.join('').capitalize
    p letters.class

end

mixer(agent_x[:first])
mixer(agent_x[:last])

#
# vowels = ['a', 'e', 'i', 'o', 'u']
#
# letters = name.split('')
# letters.map! do |letter|
#                     if letter == ' '
#                         letter = ' '
#                     elsif letter == 'e'
#                         letter = vowels['e']
#                     else letter.next
#                     end
#             end
# name = letters.join('')
#
# p name
# p letters
#
#
# def agent_creator(name)
#     i = 0
#     while i !=
#     agent[i]
#             name: name
#     }
# end
#
# agent1[:name]
#
# def next_vowel(l)
#     l1 = vowels[i]
#     l = l1
#     i = 0
#     while i < vowels.length
#
#
#
# puts fname + ' ' + lname
# puts lname
#
# p name.class
