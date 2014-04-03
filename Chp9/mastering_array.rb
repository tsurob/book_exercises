roman_str = ['M', 'D', 'CD', 'C', 'XC','L', 'XL', 'X', 'IX', 'V', 'IV', 'I']
some_chr = 'IX'

number_roman = [1000, 500, 400, 100, 90, 50, 40, 10, 9, 5, 4, 1]

char_array = []
indx_array = []
result = 0
number = 0
swap_number = 0
the_num =[]

some_chr.each_char do |ch|
	char_array.push(ch)	
end
puts "This is catch characters: #{char_array.inspect}"

char_array.each do |indx|
	indx_array << roman_str.index(indx)
end
puts "This is catch index: #{indx_array.inspect}"

indx_array.each do |num|
	swap_number = number
	number = number_roman.fetch(num)
	
	the_num << number
	if result == 0 
		result += number
	elsif swap_number < number
		result -= swap_number
		result += (number - swap_number)
	else
		result = number + result
			
	end
puts "The result: #{result}"
end
puts "The the numbers collected are: #{the_num.inspect}"
puts "The final result: #{result}"
