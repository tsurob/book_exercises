# roman_str     = ['M', 'D', 'CD', 'C', 'XC','L', 'XL', 'X', 'V', 'VI', 'I']

# my_str = "to day is a lovely day "
# ;puts numbers_roman.to_s.chr
# puts my_str.chr
while true
	puts "Enter an integer between 1 - 3000 to conver to roman numeral"
	print ">"
	num = gets.chomp.to_i
	if num.integer? 
		if num > 0 && num <= 3000
			def old_roman_numeral number
				numbers_roman = [1000, 500, 400, 100, 90, 50, 40, 10, 9, 5, 4, 1]
				roman_str     = ['M', 'D', 'CD', 'C', 'XC','L', 'XL', 'X', 'IX', 'V', 'IV', 'I']
				count = 1
				new_roman_str = ''
				str_pos = nil
				roman_num = ''
				numbers_roman.each do |i_val|
					if (number >= i_val)
						str_pos = numbers_roman.index(i_val)
						count = (number / i_val)
						for i in 1..count do
							roman_num += roman_str[str_pos]
							number = number % i_val
						end
					end
				end
				return roman_num
			end

			puts "The number #{num}, is #{old_roman_numeral num} in roman numeral."
			break
		end
	end	
end