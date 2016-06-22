array = []

p array

array.push('Meric', 'SF', 'Cal', 'Galatasaray', 'Istanbul')

p array

array.delete_at(2)

p array

array.insert(2, 'California')

p array

array.shift

p array

if array.include? 'SF'
  p array
else p "It doesn't have any SF in it .. "
end


array2 = [7,21,54,77]

new_array = array + array2

p new_array
