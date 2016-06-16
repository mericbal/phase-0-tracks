puts 'How many empolyees will be processed ?'
emp = gets.chomp.to_i

while 0 < emp

puts 'What is your name ?'
name = gets.chomp

if name == ( 'Drake Cula' || 'Tu Fang' )
  result = 'Definitely a vampire !'
end

puts 'How old are you ?'
age = gets.chomp.to_i
puts 'What year were you born ?'
bdate = gets.chomp.to_i

if 2016 - bdate == age
  age = true
else age = false
end

puts 'Our cafeteria serves garlic bread . Should we order some for you ? '
garlic = gets.chomp

if garlic == 'yes'
  garlic = true
  else garlic = false
end

puts 'Would you like to enroll companys health insurance ?'
insurance = gets.chomp

if insurance == 'yes'
  insurance = true
else insurance = false
end

puts 'DO you have any allergies ? If so write them when you are done you can write "done" '
allergies = gets.chomp
  break if allergies == 'no'
  while allergies != 'sunshine'
  puts 'Another one ? '
  allergies = gets.chomp
  break if allergies == 'done'
  end
result = 'Mericicicici'


  emp -= 1

  puts result
end


puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."
