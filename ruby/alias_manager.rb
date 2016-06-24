def mixer(string)
    letters = string.downcase.split('')
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
                    elsif harf == 'z'
                        harf = 'a'
                    else
                    harf.next
                    end
                end
    letters.join('')

end

all_agents = []

loop do
    agent_x = {
        first: '',
        last: '',
    }

    puts 'Welcome to name encription .. Type "quit" to exit , otherwise , press enter to continue ..  '
    input = gets.chomp
    break if input == 'quit'

    puts 'Please , enter the first name ?'
    first_name = gets.chomp
    break if first_name == 'quit'
    agent_x[:first] = first_name

    puts 'Enter the last name ?'
    last_name = gets.chomp
    break if last_name == 'quit'
    agent_x[:last] = last_name



    puts 'Here is your encrypted fake first name = ' + mixer(agent_x[:last]).capitalize + ' !'
    input = gets.chomp
    break if input == 'quit'

    puts 'Here is your encrypted fake last name = ' + mixer(agent_x[:first]).capitalize + ' !'
    input = gets.chomp
    break if input == 'quit'

    all_agents.push(agent_x)

end



puts 'Exited !'

i = 0
while  i < all_agents.length
 puts all_agents[i][:first].capitalize + ' ' + all_agents[i][:last].capitalize  + ' is called by name ' + mixer(all_agents[i][:last]).capitalize + ' ' + mixer(all_agents[i][:first]).capitalize + ' !!!'
 i += 1
 end
