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
    letters.join('')

end

agent_x[:fake_l] = mixer(agent_x[:first])
agent_x[:fake_f] = mixer(agent_x[:last])

p agent_x

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
