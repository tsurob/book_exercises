nw_ch_array = ['w','a','x','b','y','c']
some_chr = 'abc'

some_num = [6,5,4,3,2,1]
array_A = []
array_B = []
cth_array = []
lv = nil
puts "This is before shifting from nw_ch_array: #{nw_ch_array.inspect}"
nw_ch_array.length.times do |i|
	array_A = nw_ch_array.shift
	lv = i
	puts "This is shifting result of array_A:  #{array_A.inspect}"
	puts "This is after shifting from nw_ch_array: #{nw_ch_array.inspect}"
end
puts "This is the new nw_ch_array after the loop: #{nw_ch_array.inspect}"
#puts array_A.inspect+"\n"
