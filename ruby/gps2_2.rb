

def create(string)
    list = string.split(' ')
    new_hash = Hash.new
    list.each { |x| new_hash[x] = 0 }
    new_hash
end

def add(item, value)
    list[item] = value


end

def remove(item)
    new_hash.delete(item)
end

def update(item, value)
    new_hash[item] = value
end


def print_list(new_hash)
    puts 'Here is your grocery list :'
    new_hash.each { |k, v| puts k.to_s.capitalize + ' => ' + v.to_s.capitalize}
end


create('apple banana pear')

# add('milk', 2)
