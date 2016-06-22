array = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15]

hash = {
    a: 1,
    b: 2,
    c: 3,
    d: 4,
    e: 5,
    f: 6,
    g: 7,
    h: 8,
}
#
# array.each { |num|  puts num + 3 }
# p array
#
#
# array.map! { |num| num + 100}
# p array
#
#
# hash.each { |k, v| puts v + 7}
# p hash
#
#
# hash.map { |k, v| puts v + 107}
# p hash
#
#
# array.delete_if { |x| x < 5}
# p array
#
#
# hash.delete_if { |k, v| v < 5}
# p hash
#
#
# array.keep_if { |x|  x % 3 == 2 }
# p array
#
#
# hash.keep_if { |k, v| v % 2 == 0}
# p hash
#
#
# array.delete_if { |x| x if x < 5 }
# p array
#
# hash.delete_if { |k,v| v if v <= 4 }
# p hash
