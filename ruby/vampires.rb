puts 'How many empolyees will be processed ?'
emp = gets.chomp.to_i

while 0 < emp

puts 'What is your name ?'
name = gets.chomp.to_s

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

if age && (garlic || insurance) == true
  result = 'Probably a normal human !'
elsif age && (garlic || insurance )  == false
  result = 'Probably a vampire !!'
elsif (age && garlic && insurance)== false
  result = 'Almost a vampire !!!'
else result = 'Result unknown ???'

end

puts result

puts 'Do you have any allergies ? If yes, please type them one by one .. When you are done you can simply write "done" ..'
allergies = gets.chomp
while allergies != 'no'
  puts 'Another allergies ? If not , simply type "done" ..'
  allergies = gets.chomp
  if allergies == 'sunshine'
    result = 'Might be a vampire because of sunshine allergy !!!'
  end
  break if allergies == 'done'

end


if name == 'drake cula'
    result = 'Definitely a vampire !!!'
elsif name == 'tu fang'
    result = 'Definitely a vampire !!!'
else name = name

end

  puts result

  emp -= 1
end



puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."
