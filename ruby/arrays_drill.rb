def cr_array(x, xx, xxx)
  new1 = []
  new1.push(x,xx,xxx)
  p new1
end

def cr_array2(arr, x)
  new2 = []
  new2 = arr +  new2.push(x)
  p new2
end


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


cr_array('Kaan', 'Berko', 'Ugur')
cr_array('Ipek', 'Nefer', 'Ceren')

cr_array2(['Madrid', 'Barcelona', 7], 'Toledo')
